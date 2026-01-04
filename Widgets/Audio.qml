import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Pipewire

import "../Components"

Rectangle {
    id: audioWidget
    color: "#282c34"
    radius: 8
    implicitWidth: contentContainer.implicitWidth + 16
    implicitHeight: 28

    property PwNode audioSource: Pipewire.defaultAudioSource
    property PwNode audioSink: Pipewire.defaultAudioSink

    PwObjectTracker {
        objects: [audioWidget.audioSource, audioWidget.audioSink]
    }

    RowLayout {
        id: contentContainer
        anchors.fill: parent
        anchors.margins: 8
        spacing: 8

        MicIcon {
            Layout.fillHeight: true
            source: audioWidget.audioSource
        }

        VerticalDivider {
            Layout.fillHeight: true
        }

        VolumeIcon {
            Layout.fillHeight: true
            sink: audioWidget.audioSink
        }
    }
}
