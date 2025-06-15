import Quickshell
import Quickshell.Io
import QtQuick
import "widgets"
import "root:/globals"
import "root:/elements"
Item {
    id: root

    readonly property int borderWidth: 2
    readonly property int baseRadius: 20

    required property int workspaceNum

    property bool inUse
    property bool selected

    anchors {
        left: parent.left
        right: parent.right
    }

    Frame {
        id: icon
        
        anchors {
            horizontalCenter: parent.horizontalCenter
        }

        implicitHeight: baseRadius
        implicitWidth: baseRadius
        

        color: "transparent"
        border.color: Appearance.palette.foreground1
        border.width: borderWidth

        radius: Appearance.radius.full
    }
}