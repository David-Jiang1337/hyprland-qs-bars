import Quickshell
import Quickshell.Io
import QtQuick
import "root:/services"
import "root:/globals"
import "root:/elements"

Frame {
    id: root
    anchors.fill: parent
    radius: Appearance.radius.full

    TextLabel {
        id: OSIcon
        color: Appearance.palette.foreground1
        text: "󰣇"
        font.family: Appearance.font.family.symbols
        font.pointSize: Appearance.font.size.large
    }

}