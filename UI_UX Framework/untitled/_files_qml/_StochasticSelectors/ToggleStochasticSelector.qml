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
        random = parseInt(randomSelection(1, 2));
        if(random == 1) {createMidiKeyboard(Toggle1);}
        if(random == 2) {createMidiKeyboard(Toggle2);}
        return random;
    }

    Component.onCompleted: randomPicking();

}
