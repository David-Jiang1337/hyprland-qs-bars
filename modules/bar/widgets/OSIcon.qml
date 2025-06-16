import Quickshell
import Quickshell.Io
import QtQuick
import "root:/services"
import "root:/globals"
import "root:/elements"

Frame {
    id: root
    anchors.fill: parent
    anchors.centerIn: parent
    radius: Appearance.radius.full

    TextLabel {
        id: os
        color: Appearance.palette.foreground1
        text: "󰣇"
        font.family: Appearance.font.family.symbols
        font.pointSize: Appearance.font.size.large
    }

    MouseArea {
        id: mouseArea
        anchors.fill: root
        hoverEnabled: true
    }

    states: [
        State {
            name: "unhovered"
            when: !mouseArea.containsMouse
            PropertyChanges {
                target: root
                color: Appearance.palette.background1
            }
            PropertyChanges {
                target: os
                color: Appearance.palette.foreground1
            }
        },
        State {
            name: "hovered"
            when: mouseArea.containsMouse
            PropertyChanges {
                target: root
                color: Appearance.palette.foreground1
            }
            PropertyChanges {
                target: os
                color: Appearance.palette.background1
            }
        }
    ]

}