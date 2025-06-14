import Quickshell
import Quickshell.Io
import QtQuick

Scope {
    id: root

    PanelWindow {
        anchors {
            top: true
            left: true
            bottom: true
        }
        implicitWidth: 50

        Text {
            anchors.centerIn: parent
            text: "hello world"
            rotation: -90
        }
    }
}    

