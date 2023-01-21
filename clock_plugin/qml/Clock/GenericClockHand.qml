import QtQuick 2.9

Rectangle
{
    id: genericClockHand
    color: "red"
    width: 2
    height: parent.height / 3
    x: (parent.width / 2) - (width / 2)
    y: Math.abs(maxSize - height)
    transformOrigin: Item.Bottom

    property int animationDurationSeconds: 60000
    readonly property int maxSize: parent.height / 2

    RotationAnimation on rotation
    {
        from: 0
        to: 360
        duration: animationDurationSeconds
        loops: Animation.Infinite
    }
}
