import QtQuick 2.0

    Rectangle {

        //property var _state: 0

        id: radial1
        visible: true
        anchors.fill: parent
        border.color: "transparent"
        color: "transparent"

        Image {
            id: myRadial1Image
            //anchors.fill: parent
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "icons/radial/myRadial/myRadial.png"
        }

        MouseArea {
            id: stateRadial
            anchors.fill: parent
            onClicked: {

            }
        }
    }




