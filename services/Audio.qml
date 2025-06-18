pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Services.Pipewire

Singleton {
    id: root

    readonly property PwNode sink: Pipewire.defaultAudioSink
    readonly property PwNode source: Pipewire.defaultAudioSource

    readonly property bool muted: sink?.audio?.muted ?? false
    readonly property real volume: sink?.audio?.volume ?? 0

    function getVolume() {
        return volume
    }


    function setVolume(volume: real): void {
        setVolumeProc.targetVolume = volume;
        setVolumeProc.running = true;
    }

    Process {
        id: setVolumeProc
        property real targetVolume: 0
        command: ["pactl", "set-sink-volume", "@DEFAULT_SINK@", targetVolume*100 + "%"] // this is so cursed I hate it wow
        running: false
    }

    PwObjectTracker {
        objects: [Pipewire.defaultAudioSink, Pipewire.defaultAudioSource]
    }
}