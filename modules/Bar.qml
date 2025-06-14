import Quickshell
import Quickshell.Io
import QtQuick

Scope {
    id: root

    property string time

    Variants {
        model: Quickshell.screens
        delegate: Component{
            PanelWindow {
                anchors {
                    top: true
                    left: true
                    bottom: true
                }
                implicitWidth: 50

                Text {
                    id: clock
                    anchors.centerIn: parent

                    Process {
                        id: dateProc
                        
                        command: ["date"]
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
            }
        }
        
    }
}    

