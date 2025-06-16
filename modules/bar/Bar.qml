import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import "root:/modules/bar/widgets"
import "root:/globals"
import "root:/elements"


Item {
    PanelWindow {
        id: wrapper
        property int padding: Appearance.padding.medium

        color: "transparent"
        property var modelData

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

            WidgetFrame {
                id: soundFrame
                implicitHeight: soundColumn.implicitHeight + Appearance.padding.large*2
                anchors{
                    bottom: clockFrame.top
                    rightMargin: Appearance.spacing.small
                    leftMargin: Appearance.spacing.small
                }
                color: Appearance.palette.background2
                radius: Appearance.radius.full
                
                ColumnLayout {
                    id: soundColumn
                    spacing: Appearance.spacing.small
                    anchors.centerIn: parent
                    Sound {
                        id: sound
                    }
                    Sound {
                        id: sound2
                    }
                    Sound {
                        id: sound3
                    }
                }
            }

            WidgetFrame { // Clock widget
                id: clockFrame
                anchors.bottom: parent.bottom
                implicitHeight: clock.implicitHeight + Appearance.padding.small*2

                Clock {
                    id: clock
                }
            }
            
        }

        implicitWidth: child.implicitWidth + padding

        

        
    }
}

