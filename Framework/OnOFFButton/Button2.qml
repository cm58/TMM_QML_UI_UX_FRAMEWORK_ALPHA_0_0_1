import QtQuick 2.0
import QtQuick.Window 2.2

    Rectangle {
        id: button2_root
        anchors.fill: parent
        border.color: "black"
        color: "yellow"

        Rectangle {
            id: buttonContainer2
            border.color: "black"
            color: "black"
            width: parent.width * 0.75
            height: parent.height * 0.75
            anchors.verticalCenter: parent.verticalCenter;
            anchors.horizontalCenter: parent.horizontalCenter;
        }

        MouseArea {
            id: onOFFclicked
            anchors.fill: parent
            onPressed: {
                onOffLabel.color = "grey";
                buttonContainer2.color = "light yellow"
                button2_root.color = "black"

            }
            onReleased: {
                onOffLabel.color = "white";
                buttonContainer2.color = "black"
                button2_root.color = "yellow"
            }
        }

        Text {
            id: onOffLabel
            text: "LABEL 1"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            font.pixelSize: parent.width / 10.0
        }
    }

