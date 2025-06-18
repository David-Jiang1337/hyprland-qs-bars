import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import "root:/modules/bar/widgets"
import "root:/globals"
import "root:/elements"
import "root:/services"


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

                WidgetFrame {
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
                    implicitHeight: childrenRect.height + implicitWidth
                    color: Appearance.palette.background2
                    radius: Appearance.radius.full

                    Layout.alignment: Qt.AlignHCenter
                    Layout.rightMargin: Appearance.spacing.small
                    Layout.leftMargin: Appearance.spacing.small
                    
                    ColumnLayout {
                        id: columnTray
                        spacing: parent.traySpacing
                        anchors.top: parent.top
                        anchors.topMargin: parent.implicitWidth / 2

                        VerticalSlider {
                            id: soundSlider
                            value: MathExtra.boundValue(Audio.getVolume(), 0, 1)
                            Layout.alignment: Qt.AlignHCenter
                            implicitHeight: 100
                            implicitWidth: Appearance.sizing.sliderWidth

                            updateValue: (mouseY) => {
                                Audio.setVolume(getValueAtY(mouseY));
                            }
                        }

                        WidgetFrame {
                            id: soundButton
                            implicitWidth: Appearance.font.size.medium
                            implicitHeight: Appearance.font.size.medium
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

