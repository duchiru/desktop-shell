import QtQuick
import Quickshell

import "../Components"

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
}