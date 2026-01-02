import QtQuick
import Quickshell

import "../Components"
import "../Common"

Rectangle {
    implicitWidth: Math.max(28, clock.implicitWidth + 24)
    implicitHeight: 28
    color: "#282c34"
    radius: 8

    SystemClock {
        id: systemClock
        precision: SystemClock.Seconds
    }

    DText {
        id: clock

        anchors.centerIn: parent
        text: Qt.formatDateTime(systemClock.date, "hh:mm")
        color: "white"
    }

    // readonly property Component clockPopup: Rectangle {
    //     implicitWidth: popupText.implicitWidth + 20
    //     implicitHeight: popupText.implicitHeight + 20

    //     DText {
    //         id: popupText
    //         anchors.centerIn: parent
    //         text: "Test CLock hkdjshfksjdfhk"
    //     }
    // }

    // MouseArea {
    //     anchors.fill: parent
    //     onClicked: {
    //         const position = clock.mapToGlobal(0, 0)
    //         PopupManager.openPopup(parent.clockPopup, position.x, position.y + parent.height);
    //     }
    // }
}