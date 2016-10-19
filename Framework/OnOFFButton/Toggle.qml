import QtQuick 2.0

    Rectangle {

        property var _state: 0

        id: toggle1
        visible: true
        anchors.fill: parent
        border.color: "transparent"
        color: "transparent"

        Image {
            id: myToggle1Image
            //anchors.fill: parent
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: _state == 1 ? "icons/toggle1/off/off.png" : "icons/toggle1/on/on.png"
        }

        MouseArea {
            id: statePic
            anchors.fill: parent
            onClicked: {
                _state = ((_state + 1) % 2)
                //console.log(_state);
            }
        }
    }




