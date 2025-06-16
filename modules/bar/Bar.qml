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
            id: barFrame

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
                spacing: Appearance.spacing.small
                anchors {
                    bottom: parent.bottom
                    bottomMargin: Appearance.spacing.small
                }

                WidgetFrame { // Clock widget
                    id: clockFrame
                    implicitHeight: clock.implicitHeight

                    Clock {
                        id: clock
                    }
                }

                Frame {
                    readonly property int traySpacing: Appearance.spacing.small

                    id: soundFrame
                    implicitWidth: barFrame.width - Appearance.padding.small * 2
                    implicitHeight: columnTray.childrenRect.height + traySpacing * 2
                    color: Appearance.palette.background2
                    radius: Appearance.radius.full

                    Layout.alignment: Qt.AlignHCenter
                    Layout.rightMargin: Appearance.spacing.small
                    Layout.leftMargin: Appearance.spacing.small
                    
                    ColumnLayout {
                        id: columnTray
                        spacing: parent.traySpacing
                        anchors.centerIn: parent

                        WidgetFrame {
                            implicitWidth: sound.implicitHeight
                            implicitHeight: implicitWidth
                            Sound {
                                id: sound
                            }

                        }

                    }
                }

                WidgetFrame {
                    implicitHeight: width
                    Power {
                        id: power
                    }
                }
                

            }
            
        }

        implicitWidth: barFrame.implicitWidth + padding

        
    }
}

