import Quickshell
import Quickshell.Io
import QtQuick
import "root:/services"
import "root:/globals"

Text {
    id: clock
    anchors.centerIn: parent
    text: Time.format("󰃭\nhh\nmm")

    horizontalAlignment: Text.AlignHCenter
    color: Appearance.palette.foreground1
    font.family: Appearance.font.family.sans
    font.pointSize: Appearance.font.size.medium
}

    