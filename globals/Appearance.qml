pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root

    readonly property Font font: Font {}
    readonly property Palette palette: Palette {}
    readonly property Padding padding: Padding {}
    readonly property Radius radius: Radius {}

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

    component Padding: QtObject {
        readonly property int small: 16
        readonly property int medium: 20
        readonly property int large: 24
    }

    component Radius: QtObject {
        readonly property int small: 4
        readonly property int medium: 10
        readonly property int large: 16
        readonly property int full: 1024
    }

    component Palette: QtObject {
        readonly property color background1: "#ffffff"
        readonly property color foreground1: "#000000"
    }
    
}
