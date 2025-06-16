import Quickshell
import QtQuick
import "root:/globals"
import "root:/elements"

Frame {
    id: root
    anchors {
        right: parent.right
        left: parent.left
        rightMargin: Appearance.spacing.small
        leftMargin: Appearance.spacing.small
    }
    width: parent.width - Appearance.padding.small * 2
}