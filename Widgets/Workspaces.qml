import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland

import "../Components"

Rectangle {
    id: workspacesWidget
    implicitWidth: Math.max(28, indicators.implicitWidth + 24)
    implicitHeight: 28
    color: "#282c34"
    radius: 8

    RowLayout {
        id: indicators

        anchors.centerIn: parent
        spacing: 8

        Repeater {
            model: Hyprland.workspaces.values

            DText {
                required property HyprlandWorkspace modelData

                text: modelData?.id ?? ""
                color: modelData?.focused ? "cyan" : "gray"
                font.bold: modelData?.focused ?? false
                
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: parent.modelData?.activate()
                }
            }
        }
    }
}
