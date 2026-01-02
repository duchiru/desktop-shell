import QtQuick
import QtQuick.Layouts

import "../Components"
import "../Common"

Rectangle {
    implicitWidth: 28
    implicitHeight: 28
    color: "#282c34"
    radius: 8

    DText {
        id: text

        anchors.centerIn: parent
        text: "\uf303"
        color: "white"
        font.pixelSize: 16
    }

    // readonly property Component mainMenuComponent: Rectangle {
    //     implicitWidth: content.implicitWidth + 16
    //     implicitHeight: content.implicitHeight + 8
    //     color: "#282c34"
    //     radius: 8

    //     ColumnLayout {
    //         id: content
    //         anchors.fill: parent
    //         anchors.leftMargin: 8
    //         anchors.rightMargin: 8
    //         anchors.topMargin: 4
    //         anchors.bottomMargin: 4
    //         spacing: 4

    //         DText {
    //             text: "\udb82\udd04 Sleep"
    //             color: "white"
    //             font.pixelSize: 13
    //         }

    //         DText {
    //             text: "\udb81\udc25 Shutdown"
    //             color: "white"
    //             font.pixelSize: 13

    //             MouseArea {
    //                 anchors.fill: parent
    //                 onClicked: {}
    //             }
    //         }
    //     }
    // }

    // MouseArea {
    //     id: mouseArea
    //     anchors.fill: parent

    //     onClicked: {
    //         const position = text.mapToGlobal(0, 0);
    //         PopupManager.openPopup(parent.mainMenuComponent, position.x, position.y + parent.height);
    //     }
    // }
}
