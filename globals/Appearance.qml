pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root

    readonly property Font font: Font{}

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
    
}
