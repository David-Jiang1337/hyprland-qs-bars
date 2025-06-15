import Quickshell
import QtQuick
import "root:/globals"

Rectangle {
    id: root
    color: "transparent"

    Behavior on color {
        ColorAnimation {
            properties: "color"
            easing.type: Easing.InOutQuad
            duration: Appearance.duration.small
        }
    }
}