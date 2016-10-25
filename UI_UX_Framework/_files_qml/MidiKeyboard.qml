import QtQuick 2.0

Row {

    property var keyboardModelData: [0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0];
    property var keyboardKey: 0
    property var midiNote: 0
    property var holdKeyValue: 0

    id: midiKeyboardRoot
    visible: true
    anchors.fill: parent

    Repeater {
        id: midiKeyboardRepeater
        visible: true
        anchors.fill: parent
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent. top
        anchors.bottom: parent.bottom
        model: keyboardModelData




        delegate: Rectangle {
            id: keyNote
            visible: true
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: root.width / (midiKeyboardRepeater.model.length)
            border.color: keyboardModelData[index] == 0 ? "black" : "white"
            color: keyboardModelData[index] == 0 ? "white" : "black"

            MouseArea {
                id: keyBoardMouseArea
                anchors.fill: parent
                onPressed:  {
                    keyboardKey = index;
                    midiNote = 60 + index;
                    holdKeyValue = keyboardModelData[index];
                    keyboardModelData[index] = 2;
                    if(keyboardModelData[index] == 2) {keyNote.color = Qt.rgba(0, 255, 255, 255);};
                }
                onReleased: {
                    keyboardKey = 0;
                    midiNote = 0;
                    keyboardModelData[index] = holdKeyValue;
                    keyNote.color = keyboardModelData[index] == 0 ? "white" : "black"
                }
            }
        }
    }
}
