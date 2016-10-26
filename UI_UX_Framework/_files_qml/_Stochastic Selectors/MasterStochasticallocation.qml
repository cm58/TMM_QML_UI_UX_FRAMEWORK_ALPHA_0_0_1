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
        random = parseInt(randomSelection(1, 3));
        if(random == 1) {createMidiKeyboard(ButtonStochasticSelector);}
        if(random == 2) {createMidiKeyboard(ToggleStochasticSelector);}
        if(random == 3) {createMidiKeyboard(MidiKeyboardRandomSelect);}
        return random;
    }

    Component.onCompleted: randomPicking();

}
