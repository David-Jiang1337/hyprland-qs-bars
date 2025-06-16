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

    TextLabel {
        id: clock
        textFormat: Text.RichText
        text: "<div style = 'font-family: Symbols Nerd Font'></div><br>" + Time.format('hh<br>mm')
        color: Appearance.palette.foreground1
        font.family: Appearance.font.family.sans
        font.pointSize: Appearance.font.size.medium
    }
    
    MouseArea {
        id: mouseArea
        anchors.fill: root
        hoverEnabled: true
        onEntered: (mouse) => {
            clock.color = Appearance.palette.foreground2;
        }

        onExited: (mouse) => {
            clock.color = Appearance.palette.foreground1;
        }
    }

    
}


    