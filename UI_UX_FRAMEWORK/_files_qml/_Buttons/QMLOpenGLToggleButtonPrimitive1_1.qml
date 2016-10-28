import QtQuick 2.5

    Rectangle {

        property var textState: 1;
        property var state1: 'ON';
        property var state2: 'OFF';
        property var size: 320;
        property var color1: "black"
        property var color2: "white"
        property var color3: Qt.rgba(0, 255, 255, 255)

        function getRandomIntInclusive(min, max) {
          min = Math.ceil(min * 1000);
          max = Math.floor(max * 1000);
          var out = Math.floor(Math.random() * (max - min + 1)) + min;
          out = out * 0.001;
          console.log(parseFloat(out));
          return parseFloat(out);
        }

        id: button1_root
        visible: true
        anchors.fill: parent
        //width: size*2;
        //height: size;
        border.color: color3
        color: textState == 1 ? color1 : color2

        MouseArea {
            id: onOFFclicked
            anchors.fill: button1_root
            onPressed: {
                textState = 0
                //console.log(textState)
                console.log(textState);
            }
            onReleased: {
                textState = 1;
                console.log(textState);
            }
        }

        Text {
            id: onOffLabel
            text: textState == 1 ? state2 : state1
            anchors.horizontalCenter: button1_root.horizontalCenter;
            anchors.verticalCenter: button1_root.verticalCenter;
            color: textState == 1 ? color3 : color1
            font.pixelSize: button1_root.width / 10.0
        }
    }

