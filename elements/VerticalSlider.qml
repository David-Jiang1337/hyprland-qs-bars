import Quickshell
import QtQuick
import "root:/globals"

Frame {
    id: root
    property real value: 0

    Frame {
        id: sliderBackground
        color: Appearance.palette.foreground1
        anchors {
            bottom: parent.bottom
        }
        width: parent.width
        height: parent.height
        radius: Appearance.sizing.sliderRounding
    }

    Frame {
        id: sliderForeground
        color: Appearance.palette.foreground2
        anchors {
            bottom: parent.bottom
        }
        width: parent.width
        height: parent.height * value
        radius: Appearance.sizing.sliderRounding
    }
    
    MouseArea {
        id: mouseArea
        anchors.fill: root
        onPositionChanged: updateValue(mouseY)
    }

    function updateValue(y) {
        if (y <= 0) {
            value = 0;
        } else if (y > root.height) {
            value = 1;
        } else {
            value = (y - root.height)/root.height;
        }
    }
}