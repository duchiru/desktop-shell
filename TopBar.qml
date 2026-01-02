import QtQuick
import QtQuick.Layouts
import Quickshell

import "./Widgets"

PanelWindow {
    id: topBar

    anchors {
        top: true
        left: true
        right: true
    }

    margins {
        top: 4
        left: 4
        right: 4
    }

    implicitHeight: 30
    color: "transparent"

    GridLayout {
        anchors.fill: parent
        columns: 3
        columnSpacing: 0

        // Left area
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            color: "transparent"

            RowLayout {
                anchors.left: parent.left

                spacing: 8

                ArchIcon {}
                Workspaces {}
            }
        }

        // Center area
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            color: "transparent"

            RowLayout {
                anchors.horizontalCenter: parent.horizontalCenter

                spacing: 8
            }
        }

        // Right area
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            color: "transparent"

            RowLayout {
                anchors.right: parent.right

                spacing: 8

                Clock {}
            }
        }
    }
}
