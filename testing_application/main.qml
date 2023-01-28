import QtQuick 2.12
import QtQuick.Window 2.12
import ClockPlugin 1.0

Window
{
    width: 640
    height: 480
    visible: true
    title: qsTr("TestingApplication")

    ClockPlugin
    {
        id: clock
        anchors.centerIn: parent
    }
}
