/****************************************************************************
**
** Copyright (C) 2015 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing
**
** This file is part of Qt Creator.
**
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company.  For licensing terms and
** conditions see http://www.qt.io/terms-conditions.  For further information
** use the contact form at http://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 2.1 or version 3 as published by the Free
** Software Foundation and appearing in the file LICENSE.LGPLv21 and
** LICENSE.LGPLv3 included in the packaging of this file.  Please review the
** following information to ensure the GNU Lesser General Public License
** requirements will be met: https://www.gnu.org/licenses/lgpl.html and
** http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** In addition, as a special exception, The Qt Company gives you certain additional
** rights.  These rights are described in The Qt Company LGPL Exception
** version 1.1, included in the file LGPL_EXCEPTION.txt in this package.
**
****************************************************************************/

#include "appmainwindow.h"

#ifdef Q_OS_WIN
#include <windows.h>
#endif

#include <QEvent>
#include <QCoreApplication>

#ifdef QTC_USE_QX11INFO
#include <X11/Xlib.h>
#include <QX11Info>
#endif

namespace Utils {

/* The notification signal is delayed by using a custom event
 * as otherwise device removal is not detected properly
 * (devices are still present in the registry. */

class DeviceNotifyEvent : public QEvent {
public:
    explicit DeviceNotifyEvent(int id) : QEvent(static_cast<QEvent::Type>(id)) {}
};

AppMainWindow::AppMainWindow() :
        m_deviceEventId(QEvent::registerEventType(QEvent::User + 2))
{
}

void AppMainWindow::raiseWindow()
{
    setWindowState(windowState() & ~Qt::WindowMinimized);

    raise();

#if defined(QTC_USE_QX11INFO)
    // Do the same as QWidget::activateWindow(), but with two differences
    // * set newest timestamp (instead of userTime()). See QTBUG-24932
    // * set source to 'pager'. This seems to do the trick e.g. on kwin even if
    //   the app currently having focus is 'active' (but we hit a breakpoint).
    XEvent e;
    e.xclient.type = ClientMessage;
    e.xclient.message_type = XInternAtom(QX11Info::display(), "_NET_ACTIVE_WINDOW", 1);
    e.xclient.display = QX11Info::display();
    e.xclient.window = winId();
    e.xclient.format = 32;
    e.xclient.data.l[0] = 2;     // pager!
    e.xclient.data.l[1] = QX11Info::appTime(); // X11 time!
    e.xclient.data.l[2] = None;
    e.xclient.data.l[3] = 0;
    e.xclient.data.l[4] = 0;
    XSendEvent(QX11Info::display(), QX11Info::appRootWindow(),
               false, SubstructureNotifyMask | SubstructureRedirectMask, &e);
#else
    activateWindow();
#endif
}

#ifdef Q_OS_WIN
bool AppMainWindow::event(QEvent *event)
{
    if (event->type() == m_deviceEventId) {
        event->accept();
        emit deviceChange();
        return true;
    }
    return QMainWindow::event(event);
}

bool AppMainWindow::winEvent(MSG *msg, long *result)
{
    if (msg->message == WM_DEVICECHANGE) {
        if (msg->wParam & 0x7 /* DBT_DEVNODES_CHANGED */) {
            *result = TRUE;
            QCoreApplication::postEvent(this, new DeviceNotifyEvent(m_deviceEventId));
        }
    }
    return false;
}
#endif

} // namespace Utils

