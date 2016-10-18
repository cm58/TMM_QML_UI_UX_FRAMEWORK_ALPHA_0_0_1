import QtQuick 2.5
import QtQuick.Window 2.2

Window {

    property var textState: 1

    id: root
    visible: true
    minimumHeight: 320
    minimumWidth: 640
    maximumHeight: 320
    maximumWidth: 640
    title: qsTr("Button")
    color: "black"

    Rectangle {
        id: buttonContainer
        anchors.fill: parent
        border.color: Qt.rgba(0, 255, 255, 255)
        color: textState == 1 ? "black" : "white"
    }

    MouseArea {
        id: onOFFclicked
        anchors.fill: parent
        onClicked: {
            textState = ((textState + 1) % 2)
            //console.log(textState)
        }
    }

    Text {
        id: onOffLabel
        text: textState == 1 ? "OFF" : "ON"
        x: root.width * 0.4
        y: root.height * 0.4
        color: textState == 1 ? Qt.rgba(0, 255, 255, 255) : "black"
        font.pixelSize: root.width / 10.0
    }
}
