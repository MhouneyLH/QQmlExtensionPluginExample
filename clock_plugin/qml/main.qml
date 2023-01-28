import QtQuick 2.15
import QtQuick.Window 2.15
import "./Clock"

Window
{
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("ClockQmlPreviewForPlugin")

    Clock
    {
        id: clock
        anchors.centerIn: parent
    }
}
