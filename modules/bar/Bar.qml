import Quickshell
import Quickshell.Io
import QtQuick
import "widgets"
import "root:/globals"

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

                margins {
                    top: Appearance.padding.medium
                    left: Appearance.padding.medium
                    bottom: Appearance.padding.medium
                }

                implicitWidth: 80

                // widgets

                Clock {}
            }
        }
        
    }
}    

