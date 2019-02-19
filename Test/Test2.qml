import QtQuick 2.0
import "../"

ListView {
//    width: 300; height: 300

    model: 10
    delegate: Rectangle {
        width: parent.width; height: 100
        color: "lightblue"
        Text {
            anchors.centerIn: parent
            text: index
        }
    }

    ScrollBar { }
}
