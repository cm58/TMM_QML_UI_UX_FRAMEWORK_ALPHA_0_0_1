import QtQuick 2.6

    Rectangle {

        property var size
        property var yClicked: 0

        id: sliderContainer
        visible: true
        anchors.fill: parent
        border.color: "black"
        color: "black"

        Rectangle {
            id: buttonContainer2
            border.color: "black"
            color: Qt.rgba(0, 125, 125, 255);
            width: sliderContainer.width * 0.75
            height: (sliderContainer.height * 0.75) * yClicked;
            //anchors.left: paren
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.verticalCenter: parent.verticalCenter;
            transform: Rotation {origin.y: 180; angle: 180}
            //anchors.bottom: sliderContainer.bottom
        }

        MouseArea {
            id: onOFFclicked
            anchors.fill: parent
            onClicked: {
                yClicked = ((1.0 - (mouseY / sliderContainer.height)) * 2);
                //console.log(yClicked);
            }
        }
    }




