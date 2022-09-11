import QtQuick 2.9

Rectangle
{
    id: clockBackground
    width: size
    height: size
    color: "#e4e8ee"

    property int size: 200

    readonly property int hourCount: 12
    readonly property color primaryColor: "#141414"

    Rectangle
    {
        id: middlePoint
        width: size / 20
        height: size / 20
        anchors.centerIn: parent
        radius: width
        color: primaryColor
    }

    Repeater
    {
        id: repeater
        model: hourCount
        delegate: Rectangle
        {
            id: delegate
            width: 5
            height: 15
            x: middleX
            y: middleY
            color: primaryColor
            transform:
            [
                Translate
                {
                    // everytime inside of the clockBackground-Rectangle
                    y: middleY
                },
                Rotation
                {
                    angle: index * (360 / hourCount)
                    origin.x: delegate.width / 2
                    origin.y: delegate.height / 2
                }
            ]

            readonly property int middleX: (size / 2) - (delegate.width / 2)
            readonly property int middleY: (size / 2) - (delegate.height / 2)
        }
    }
}
