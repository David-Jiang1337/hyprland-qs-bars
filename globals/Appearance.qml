pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root

    readonly property Font font: Font {}
    readonly property Palette palette: Palette {}
    readonly property Padding padding: Padding {}
    readonly property Sizing sizing: Sizing {}
    readonly property Spacing spacing: Spacing {}
    readonly property Radius radius: Radius {}
    readonly property Duration duration: Duration {}
    readonly property Animations animations: Animations {}

    component FontSize: QtObject {
        readonly property int small: 12
        readonly property int medium: 16
        readonly property int large: 20
    }

    component FontFamily: QtObject {
        readonly property string sans: "IBM Plex Sans"
        readonly property string mono: "monospace"
        readonly property string symbols: "Symbols Nerd Font"
    }

    component Font: QtObject {
        readonly property FontFamily family: FontFamily {}
        readonly property FontSize size: FontSize {}
    }

    component Sizing: QtObject {
        readonly property int roundObject: 20
        readonly property int sliderWidth: 8
        readonly property int sliderRounding: 2
    }

    component Padding: QtObject {
        readonly property int tiny: 8
        readonly property int small: 16
        readonly property int medium: 20
        readonly property int large: 24
        readonly property int extraLarge: 48
    }

    component Spacing: QtObject {
        readonly property int tiny: 8
        readonly property int small: 16
        readonly property int medium: 20
        readonly property int large: 24
    }

    component Radius: QtObject {
        readonly property int small: 6
        readonly property int medium: 10
        readonly property int large: 16
        readonly property int full: 1024
    }

    component Palette: QtObject {
        readonly property color background1: "#0a0e12"
        readonly property color background2: "#1b1f24"
        readonly property color foreground0: "#ffffff"
        readonly property color foreground1: "#e1c8b1"
        readonly property color foreground2: "#c68654"
    }

    component Duration: QtObject {
        readonly property int verySmall: 50
        readonly property int small: 125
        readonly property int medium: 200
        readonly property int large: 300
        readonly property int extraLarge: 600
    }

    component Animations: QtObject {
        readonly property ColorAnimation colorAnimation: ColorAnimation {
            properties: "color"; easing.type: Easing.InOutQuad ; duration: 2000
        }
    }

    
}
