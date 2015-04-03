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

#ifndef FILESEARCH_H
#define FILESEARCH_H

#include "utils_global.h"

#include <QFuture>
#include <QMap>
#include <QStack>
#include <QDir>
#include <QTextDocument>

QT_FORWARD_DECLARE_CLASS(QTextCodec)

namespace Utils {

class QTCREATOR_UTILS_EXPORT FileIterator
{
public:
    explicit FileIterator(const QStringList &fileList,
                          const QList<QTextCodec *> encodings);
    virtual ~FileIterator();

    virtual bool hasNext() const;
    virtual QString next();
    virtual QTextCodec *encoding() const;
    virtual int maxProgress() const;
    virtual int currentProgress() const;

protected:
    FileIterator();

private:
    QStringList m_list;
    QStringListIterator *m_iterator;
    QList<QTextCodec *> m_encodings;
    int m_index;
};

class QTCREATOR_UTILS_EXPORT SubDirFileIterator : public FileIterator
{
public:
    SubDirFileIterator(const QStringList &directories, const QStringList &filters,
                       QTextCodec *encoding = 0);

    bool hasNext() const;
    QString next();
    QTextCodec *encoding() const;
    int maxProgress() const;
    int currentProgress() const;

private:
    QStringList m_filters;
    QTextCodec *m_encoding;
    mutable QStack<QDir> m_dirs;
    mutable QStack<qreal> m_progressValues;
    mutable QStack<bool> m_processedValues;
    mutable qreal m_progress;
    mutable QStringList m_currentFiles;
};

class QTCREATOR_UTILS_EXPORT FileSearchResult
{
public:
    FileSearchResult() {}
    FileSearchResult(QString fileName, int lineNumber, QString matchingLine,
                     int matchStart, int matchLength,
                     QStringList regexpCapturedTexts)
            : fileName(fileName),
            lineNumber(lineNumber),
            matchingLine(matchingLine),
            matchStart(matchStart),
            matchLength(matchLength),
            regexpCapturedTexts(regexpCapturedTexts)
    {
    }
    QString fileName;
    int lineNumber;
    QString matchingLine;
    int matchStart;
    int matchLength;
    QStringList regexpCapturedTexts;
};

typedef QList<FileSearchResult> FileSearchResultList;

QTCREATOR_UTILS_EXPORT QFuture<FileSearchResultList> findInFiles(const QString &searchTerm, FileIterator *files,
    QTextDocument::FindFlags flags, QMap<QString, QString> fileToContentsMap = QMap<QString, QString>());

QTCREATOR_UTILS_EXPORT QFuture<FileSearchResultList> findInFilesRegExp(const QString &searchTerm, FileIterator *files,
    QTextDocument::FindFlags flags, QMap<QString, QString> fileToContentsMap = QMap<QString, QString>());

QTCREATOR_UTILS_EXPORT QString expandRegExpReplacement(const QString &replaceText, const QStringList &capturedTexts);
QTCREATOR_UTILS_EXPORT QString matchCaseReplacement(const QString &originalText, const QString &replaceText);

} // namespace Utils

#endif // FILESEARCH_H
