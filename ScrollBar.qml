import QtQuick 2.0

Rectangle {
    id: root

    property Flickable target: parent // parent: Flickable
    property int orientation: Qt.Vertical
/*
    orientation : enumeration
    This property holds the orientation of the scroll bar.
    Possible values:
    |Constant     |Description|
    |Qt.Horizontal|Horizontal|
    |Qt.Vertical  |Vertical(default)|
*/

    width: orientation == Qt.Vertical ? 15 : target.width
    height: orientation == Qt.Vertical ? target.height : 15
    color: "white"
    opacity: 0.3
    radius: 5

    Rectangle {
        y: orientation == Qt.Vertical ? target.visibleArea.yPosition * target.height : 0
        x: orientation == Qt.Vertical ? 0 : target.visibleArea.xPosition * target.width
        width: orientation == Qt.Vertical ? parent.width :
                                            target.visibleArea.widthRatio * target.width
        height: orientation == Qt.Vertical ? target.visibleArea.heightRatio * target.height :
                                             parent.height
        color: "black"
        radius: root.radius
        opacity: 0.7
    }
}
