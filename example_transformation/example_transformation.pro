TEMPLATE = lib
CONFIG += qt plugin qmltypes
QT += qml

QML_IMPORT_NAME = ClockPlugin
QML_IMPORT_MAJOR_VERSION = 1

DESTDIR = imports/$$QML_IMPORT_NAME
TARGET  = clockplugin

SOURCES += \
    src/ClockPlugin.cpp

HEADERS += \
    src/ClockPlugin.h

RESOURCES += qml/qml.qrc
