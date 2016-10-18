import QtQuick 2.0
import QtQuick.Window 2.2


// still some bugs related to orientation/cordinates of slider button

Window {

    property var yClicked: 0

    id: root
    visible: true
    minimumHeight: 320*2
    minimumWidth: 320*0.5
    maximumHeight: 320*2
    maximumWidth: 320*0.5
    title: qsTr("Slider")
    color: "black"



    Rectangle {
        id: buttonContainer
        anchors.fill: parent
        border.color: "black"
        color: "black"
    }

    Rectangle {
        id: buttonContainer2
        border.color: "black"
        color: Qt.rgba(0, 125, 125, 255);
        width: root.width * 0.75
        height: (root.height * 0.75) * yClicked;
        x: root.width * 0.88
        //y: height * 0.75
        transform: Rotation {origin.y: 180; angle: 180}
        anchors.bottom: root.bottom
    }

    MouseArea {
        id: onOFFclicked
        anchors.fill: parent
        onClicked: {
            yClicked = 1.0 - (mouseY / root.height);
            console.log(yClicked);
        }
    }
}
