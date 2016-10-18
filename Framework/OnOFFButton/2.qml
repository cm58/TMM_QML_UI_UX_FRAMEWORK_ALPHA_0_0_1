import QtQuick 2.0
import QtQuick.Window 2.2

Window {

    id: root
    visible: true
    minimumHeight: 320
    minimumWidth: 320
    maximumHeight: 320
    maximumWidth: 320
    title: qsTr("Button2")
    color: "black"



    Rectangle {
        id: buttonContainer
        anchors.fill: parent
        border.color: "black"
        color: "yellow"
    }

    Rectangle {
        id: buttonContainer2
        border.color: "black"
        color: "yellow"
        width: root.width * 0.75
        height: root.height * 0.75
        x: root.width * (0.25 * 0.5)
        y: root.height * (0.25 * 0.5)
    }

    MouseArea {
        id: onOFFclicked
        anchors.fill: parent
        onPressed: {
            onOffLabel.color = "grey";
            buttonContainer2.color = "light yellow"
        }
        onReleased: {
            onOffLabel.color = "black";
            buttonContainer2.color = "yellow"
        }
    }

    Text {
        id: onOffLabel
        text: "LABEL 1"
        x: root.width * 0.3125
        y: root.height * 0.425
        color: "black"
        font.pixelSize: root.width / 10.0
    }
}

