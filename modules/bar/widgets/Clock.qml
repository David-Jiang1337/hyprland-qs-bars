import Quickshell
import Quickshell.Io
import QtQuick
import "root:/globals"

Text {
    id: clock
    anchors.centerIn: parent

    color: Appearance.palette.foreground1
    font.family: Appearance.font.family.sans
    font.pointSize: Appearance.font.size.medium

    Process {
        id: dateProc
        
        command: ["date","+%H%n%M"]
        running: true
        stdout: StdioCollector {
            onStreamFinished: clock.text = this.text
        }
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: dateProc.running = true
    }
}