import Quickshell
import QtQuick
import "root:/globals"
import "root:/services"

Frame {
    id: root
    property real value: 0
    property var updateValue: (mouseY) => {
        value = getValueAtY(mouseY);
    }

    Frame {
        id: sliderBackground
        color: Appearance.palette.foreground1
        anchors {
            bottom: parent.bottom
        }
        implicitWidth: parent.implicitWidth
        implicitHeight: parent.implicitHeight
        radius: Appearance.radius.full
    }

    Frame {
        id: sliderForeground
        color: Appearance.palette.foreground2
        anchors {
            bottom: parent.bottom
        }
        implicitWidth: parent.implicitWidth
        implicitHeight: parent.implicitHeight * value
        radius: Appearance.radius.full
    }
    
    MouseArea {
        id: mouseArea
        anchors.fill: root
        onPositionChanged: updateValue(mouseY)
        onPressed: updateValue(mouseY)
    }
    
    function getValueAtY(y) {
        return MathExtra.boundValue((root.height - y)/root.height, 0, 1);
    }
}