import Quickshell
import Quickshell.Io
import QtQuick
import "root:/services"
import "root:/globals"
import "root:/elements"

Frame {
    id: root
    anchors.fill: parent
    implicitHeight: clock.height
    radius: Appearance.radius.small
    color: Appearance.palette.background1

    TextLabel {
        id: clock
        anchors.centerIn: parent
        textFormat: Text.RichText
        text: "<div style = 'font-family: Symbols Nerd Font'></div><br>" + Time.format('hh<br>mm')

        horizontalAlignment: Text.AlignHCenter
        color: Appearance.palette.foreground1
        font.family: Appearance.font.family.sans
        font.pointSize: Appearance.font.size.medium
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
                target: clock
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
                target: clock
                color: Appearance.palette.background1
            }
        }
    ]
}


    