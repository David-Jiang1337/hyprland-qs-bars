import Quickshell
import QtQuick
import QtQuick
import QtQuick.Layouts
import "root:/globals"
import "root:/elements"

Frame {
    id: root
    Layout.alignment: Qt.AlignHCenter
    Layout.rightMargin: Appearance.spacing.small
    Layout.leftMargin: Appearance.spacing.small
    width: parent.width - Appearance.padding.small * 2
}