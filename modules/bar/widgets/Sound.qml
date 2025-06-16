import Quickshell
import Quickshell.Io
import QtQuick
import "root:/services"
import "root:/globals"
import "root:/elements"

Frame {
    id: root
    // anchors.fill: parent
    implicitWidth: sound.implicitWidth
    implicitHeight: implicitWidth
    radius: Appearance.radius.small

    TextLabel {
        id: sound
        color: Appearance.palette.foreground1
        text: formatIconFromVolume()
        font.family: Appearance.font.family.symbols
        font.pointSize: Appearance.font.size.small
    }

    function formatIconFromVolume(): string {
        if (Audio.getVolume() == 0) {
            return ""
        } else {
            return ""
        }
    }

}