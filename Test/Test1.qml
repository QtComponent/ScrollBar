import QtQuick 2.0
import "../"

Rectangle {
    anchors.fill: parent

    Flickable {
        id: view
        anchors.fill: parent
        contentWidth: picture.width
        contentHeight: picture.height

        Image {
            id: picture
            source: "Test.png"
            asynchronous: true
        }
    }


    ScrollBar {
        target: view
    }

    ScrollBar {
        target: view
        orientation: Qt.Horizontal
    }
}
