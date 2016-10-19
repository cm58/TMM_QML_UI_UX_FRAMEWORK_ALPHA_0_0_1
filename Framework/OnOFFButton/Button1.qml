import QtQuick 2.5

    Rectangle {

        property var textState: 1;
        property var state1: 'ON';
        property var state2: 'OFF';
        property var size: 320;

        id: button1_root
        visible: true
        anchors.fill: parent
        width: size*2;
        height: size;
        border.color: Qt.rgba(0, 255, 255, 255)
        color: textState == 1 ? "black" : "white"

        MouseArea {
            id: onOFFclicked
            anchors.fill: button1_root
            onClicked: {
                textState = ((textState + 1) % 2)
                //console.log(textState)
            }
        }

        Text {
            id: onOffLabel
            text: textState == 1 ? state2 : state1
            anchors.horizontalCenter: button1_root.horizontalCenter;
            anchors.verticalCenter: button1_root.verticalCenter;
            color: textState == 1 ? Qt.rgba(0, 255, 255, 255) : "black"
            font.pixelSize: button1_root.width / 10.0
        }
    }

