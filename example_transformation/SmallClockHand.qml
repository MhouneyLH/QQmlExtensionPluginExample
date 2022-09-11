import QtQuick 2.9

Rectangle
{
    id: smallClockHand
    color: primaryColor
    width: 3
    height: parent.height / 2 - distToBoundary
    x: (parent.width / 2) - (width / 2)
    y: distToBoundary
    transformOrigin: Item.Bottom

    readonly property color primaryColor: "red"
    readonly property double distToBoundary: parent.height / 5
    readonly property int defaultDuration: 60000 // 60 * 1000

    RotationAnimation on rotation
    {
        id: animator
        from: 0
        to: 360
        duration: defaultDuration
    }
}
