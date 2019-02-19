import QtQuick 2.0

Rectangle {
    width: 200; height: 200

    Flickable {
        id: view
        anchors.fill: parent
        contentWidth: picture.width
        contentHeight: picture.height

        Image {
            id: picture
            source: "/home/strong/Pictures/Screenshot from 2019-02-15 17-01-47.png"
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
