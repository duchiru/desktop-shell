import QtQuick
import QtQuick.Layouts
import Quickshell.Services.UPower

import "../Components"

Rectangle {
    id: batteryWidget
    color: "#282c34"
    radius: 8
    implicitWidth: contentContainer.implicitWidth + 16
    implicitHeight: 28

    property UPowerDevice powerDevice: UPower.displayDevice

    RowLayout {
        id: contentContainer
        anchors.fill: parent
        anchors.margins: 8
        spacing: 6

        BatteryIcon {
            powerDevice: batteryWidget.powerDevice
            Layout.fillHeight: true
        }

        DText {
            Layout.fillHeight: true
            text: Math.round(batteryWidget.powerDevice.percentage * 100) + "%"
            color: batteryWidget.powerDevice.percentage <= 0.2 ? "red" : "white"
        }
    }
}
