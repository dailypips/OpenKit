set (MACOSX_BUNDLE_INFO_STRING "QuantIDE")
set (MACOSX_BUNDLE_ICON_FILE "quantide.icns")
set (MACOSX_BUNDLE_GUI_IDENTIFIER "QuantIDE")
set (MACOSX_BUNDLE_LONG_VERSION_STRING ${APPLICATION_VERSION})
set (MACOSX_BUNDLE_BUNDLE_NAME "QuantIDE")
set (MACOSX_BUNDLE_SHORT_VERSION_STRING ${APPLICATION_VERSION})
set (MACOSX_BUNDLE_BUNDLE_VERSION ${APPLICATION_VERSION})
set (MACOSX_BUNDLE_COPYRIGHT "Copyright 2014 dailypips.org")

add_custom_command (
    OUTPUT ${APPLICATION_BUNDLE_DIR}/Contents/Resources/qt.conf
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    COMMAND ${CMAKE_SOURCE_DIR}/mac/deploy.sh ${APPLICATION_BUNDLE_DIR} ${QT_BINARY_DIR}/macdeployqt
)

add_custom_target (deploy
    DEPENDS ${APPLICATION_BUNDLE_DIR}/Contents/Resources/qt.conf
)
