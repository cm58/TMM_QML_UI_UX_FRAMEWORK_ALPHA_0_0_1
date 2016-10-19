import QtQuick 2.0
import QtQuick.Window 2.0

Window {

    id: root
    width: 640
    height: 320
    visible: true
    title: qsTr("instantiationTest")
    color: "black"

    Column{
        id: coluna1
        anchors.left: parent.left
        width: root.width/3
        height: root.height
        Button1_1 {}
    }

    Column{
        id: coluna2
        anchors.horizontalCenter: parent.horizontalCenter
        width: root.width/3
        height: root.height
        Button2 {}
    }

    Column{
        id: coluna3
        anchors.right: parent.right
        width: root.width/3
        height: root.height
        Slider1 {}
    }
}
