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

        anchors {
            top: true
            left: true
            bottom: true
        }

        Frame {
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

            WidgetColumnLayout {
                id: upperWidgets
                anchors {
                    top: parent.top
                    topMargin: Appearance.spacing.small
                }

                WidgetFrame {
                id: osFrame
                implicitHeight: width
                OSIcon {
                    id: osIcon
                }
            }
            }

            WidgetColumnLayout {
                id: middleWidgets
                anchors.centerIn: parent
            }

            WidgetColumnLayout {
                id: lowerWidgets
                spacing: Appearance.spacing.tiny
                anchors {
                    bottom: parent.bottom
                    bottomMargin: Appearance.spacing.small
                }

                WidgetFrame {
                    id: soundFrame
                    implicitHeight: soundColumn.implicitHeight + Appearance.padding.large*2
                    color: Appearance.palette.background2
                    radius: Appearance.radius.full
                    
                    ColumnLayout {
                        id: soundColumn
                        spacing: Appearance.spacing.small
                        anchors.centerIn: parent
                        Sound {
                        }
                        Sound {
                        }
                        Sound {
                        }
                    }
                }

                WidgetFrame { // Clock widget
                    id: clockFrame
                    implicitHeight: clock.implicitHeight + Appearance.padding.small*2

                    Clock {
                        id: clock
                    }
                }

            }

            

            
            
        }

        implicitWidth: child.implicitWidth + padding

        
    }
}

