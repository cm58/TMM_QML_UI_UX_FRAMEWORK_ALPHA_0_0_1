import QtQuick 2.0

Item {
    id: randomMIDIkeyboardSelector;
    property var random: 0;

    function randomSelection(min, max) {
      min = Math.ceil(min);
      max = Math.floor(max);
      var out = Math.floor(Math.random() * (max - min + 1)) + min;
      console.log(parseFloat(out));
      return parseFloat(out);
    }

    function createMidiKeyboard(itemToBeInstantiated) {
        var component = Qt.createComponent("MidiKeyboard.qml");
        var midiKeyboard = component.createObject(itemToBeInstantiated, {});
    }

    function randomPicking() {
        random = parseInt(randomSelection(1, 9));
        if(random == 1) {createMidiKeyboard(Button1);}
        if(random == 2) {createMidiKeyboard(Button1_1);}
        if(random == 3) {createMidiKeyboard(Button2);}
        if(random == 4) {createMidiKeyboard(Button2_2);}
        if(random == 5) {createMidiKeyboard(Button3);}
        if(random == 6) {createMidiKeyboard(Button3_3);}
        if(random == 7) {createMidiKeyboard(Button4);}
        if(random == 8) {createMidiKeyboard(Button4_4);}
        if(random == 8) {createMidiKeyboard(Button5);}
        return random;
    }

    Component.onCompleted: randomPicking();

}
