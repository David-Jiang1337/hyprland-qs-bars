import Quickshell
import Quickshell.Io
import QtQuick
import "widgets"

Scope {
    id: root

    property string time

    Variants {
        model: Quickshell.screens
        delegate: Component{
            PanelWindow {
                property var modelData

                screen: modelData

                anchors {
                    top: true
                    left: true
                    bottom: true
                }
                implicitWidth: 80

                // widgets

                Clock {}
            }
        }
        
    }
}    

