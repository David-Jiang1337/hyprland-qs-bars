import Quickshell
import QtQuick
import QtQuick.Layouts
import "root:/globals"

ColumnLayout {
    implicitHeight: childrenRect.height + Appearance.padding.medium*2
    anchors {
        left: parent.left
        right: parent.right
    }
}