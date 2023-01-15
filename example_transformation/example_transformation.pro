TEMPLATE = lib
CONFIG += plugin
QT += quick qml

DESTDIR = ../Clock
TARGET = clockplugin

SOURCES += \
        src/ClockPlugin.cpp \
        src/main.cpp

HEADERS += \
    src/ClockPlugin.h

RESOURCES += qml/qml.qrc

DISTFILES += \
    qml/Clock/qmldir

DESTPATH = qml/Clock

target.path = $$DESTPATH
qmldir.files = $$DESTPATH/qmldir
qmldir.path = $$DESTPATH
INSTALLS += target qmldir

CONFIG += install_ok  # Do not cargo-cult this!

# Copy the qmldir file to the same folder as the plugin binary
QML_DIR = qml/Clock
resource.files += \
    $$QML_DIR/qmldir \
    $$QML_DIR/Clock.qml \
    $$QML_DIR/ClockBackground.qml \
    $$QML_DIR/GenericClockHand.qml \
    $$QML_DIR/HourClockHand.qml \
    $$QML_DIR/MinuteClockHand.qml \
    $$QML_DIR/SecondClockHand.qml
resource.path = $$DESTDIR
COPIES += resource
INSTALLS += resource
