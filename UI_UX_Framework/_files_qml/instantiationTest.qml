import QtQuick 2.0
import QtQuick.Window 2.0

Window {

    id: root
    width: 640
    height: 320
    minimumWidth: 640
    maximumWidth: 640
    minimumHeight: 320
    maximumHeight: 320
    visible: true
    title: qsTr("instantiationTest")
    color: "black"

        // Button1 {}            // the button looks good and is working fine, feedback is welcome
        // Button1_1 {}          // the button looks good and is working fine, feedback is welcome
        // Button2 {}            // the button looks good and is working fine, feedback is welcome
        // Button2_2 {}            // the button looks good and is working fine, feedback is welcome
        // Button3 {}            // the button is working fine, but looking terribly. feedback is welcome
        // Button3_3 {}
        // Button4 {}            // the button is working fine, but looking terribly. feedback is welcome
        // Button4_4 {}
        // Slider1 {}            // slider looks good but is buggy and faulty. feedback is welcome
        // Toggle1 {}            // toggle looks good nad is working fine. feedback is welcome
        // Toggle2 {}            // toggle looks good nad is working fine. feedback is welcome
        // Radial {}             // radial looks good and is working fine. feedback is welcome
        // Switch {}             // switch works fine. images need to be treated in photoshop, to keep black background and same size. feedback is welcome
        // UpDownArrows {}       // working and looking fine. needs some twweaking within dimensions cropping
        // PlayStop {}           // looks and works perfectly.feedback is welcome, however
        // Click1 {}             // looks and works perfectly. needs mouseX and mouseY coordinates
        // Click2 {}             // looks and works perfectly. needs mouseX and mouseY coordinates
        MidiKeyboard {}
}
