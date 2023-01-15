TEMPLATE = lib
CONFIG += plugin
QT += quick qml

DESTDIR = ../Clock
TARGET = $$qtLibraryTarget(clockplugin)

SOURCES += \
        src/main.cpp

RESOURCES += qml/qml.qrc

DESTPATH = $$OUT_PWD/Clock

target.path=$$DESTPATH
qmldir.files=$$PWD/qmldir
qmldir.path=$$DESTPATH
INSTALLS += target qmldir

CONFIG += install_ok  # Do not cargo-cult this!

# Copy the qmldir file to the same folder as the plugin binary
cpqmldir.files = qml/Clock/qmldir
cpqmldir.path = $$DESTDIR
COPIES += cpqmldir

DISTFILES += \
    qml/Clock/qmldir
