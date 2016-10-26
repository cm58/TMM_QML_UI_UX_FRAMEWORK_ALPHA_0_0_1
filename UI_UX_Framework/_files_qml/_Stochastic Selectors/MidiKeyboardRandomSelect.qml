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
        random = parseInt(randomSelection(1, 8));
        if(random == 1) {createMidiKeyboard(MidiKeyboard);}
        if(random == 2) {createMidiKeyboard(MidiKeyboard2);}
        if(random == 3) {createMidiKeyboard(MidiKeyboard3);}
        if(random == 4) {createMidiKeyboard(MidiKeyboard4);}
        if(random == 5) {createMidiKeyboard(MidiKeyboard5);}
        if(random == 6) {createMidiKeyboard(MidiKeyboard6);}
        if(random == 7) {createMidiKeyboard(MidiKeyboard7);}
        if(random == 8) {createMidiKeyboard(Midikeyboard8);}
        return random;
    }

    Component.onCompleted: randomPicking();

}
