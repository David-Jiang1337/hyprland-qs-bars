import Quickshell
import QtQuick
import "root:/globals"

Text {
    id: root
    color: Appearance.palette.foreground1

    Behavior on color {
        ColorAnimation {
            properties: "color"
            easing.type: Easing.InOutQuad
            duration: Appearance.duration.small
        }
    }
}