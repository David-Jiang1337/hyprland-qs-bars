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
        Component{
            PanelWindow {
                id: wrapper
                property int padding: Appearance.padding.medium

                color: "transparent"
                property var modelData

                screen: modelData

                anchors {
                    top: true
                    left: true
                    bottom: true
                }

                Rectangle {
                    id: child

                    implicitWidth: 80
                    radius: Appearance.radius.medium
                    color: Appearance.palette.background1

                    anchors {
                        top: parent.top
                        left: parent.left
                        bottom: parent.bottom

                        topMargin: wrapper.padding
                        leftMargin: wrapper.padding
                        bottomMargin: wrapper.padding
                    }

                    // widgets
                    Clock {}
                }

                implicitWidth: child.implicitWidth + padding

                

                
            }
        }
        
    }
}    

