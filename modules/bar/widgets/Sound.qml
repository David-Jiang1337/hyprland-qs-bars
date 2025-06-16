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
        var volume = Audio.getVolume();
        if (Audio.muted) {
            return "";
        } else if (volume < 0.3) {
            return "";
        } else if (volume < 0.6) {
            return "";
        } else {
            return "";
        }
    }

}