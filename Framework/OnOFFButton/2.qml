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

    MouseArea {
        id: onOFFclicked
        anchors.fill: parent
        onPressed: {
            // onOffLabel.color = Qt.rgba(0, 255, 255, 255);
            onOffLabel.color = "grey";
        }
        onReleased: {
            onOffLabel.color = "black";

        }
    }

    Text {
        id: onOffLabel
        text: "LABEL 1"
        x: root.width * 0.3
        y: root.height * 0.4
        color: "black"
        font.pixelSize: root.width / 10.0
    }
}

