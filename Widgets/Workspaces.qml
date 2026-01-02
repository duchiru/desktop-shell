pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland

import "../Components"

Rectangle {
    implicitWidth: Math.max(28, indicator.implicitWidth + 24)
    implicitHeight: 28
    color: "#282c34"
    radius: 8

    RowLayout {
        id: indicator

        anchors.centerIn: parent
        spacing: 8

        Repeater {
            id: repeater

            property list<HyprlandWorkspace> workspaces: Hyprland.workspaces.values

            model: workspaces.length

            DText {
                required property int index
                property HyprlandWorkspace workspace: repeater.workspaces[index]

                text: workspace.id
                color: workspace.focused ? "cyan" : "gray"
                font.bold: workspace.focused

                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: parent.workspace.activate()
                }
            }
        }
    }
}
