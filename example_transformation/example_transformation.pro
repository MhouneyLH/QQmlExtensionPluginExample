QT += quick

SOURCES += \
        src/main.cpp

RESOURCES += qml/qml.qrc

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
