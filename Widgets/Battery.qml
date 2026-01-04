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

    property var powerDevice: UPower.displayDevice

    RowLayout {
        id: contentContainer
        anchors.fill: parent
        anchors.margins: 8
        spacing: 4

        DText {
            Layout.fillHeight: true

            function getBatteryIcon(charging, percentage) {
                if (charging) {
                    if (percentage <= 10)
                        return "\udb82\udc9c";
                    if (percentage <= 20)
                        return "\udb80\udc86";
                    if (percentage <= 30)
                        return "\udb80\udc87";
                    if (percentage <= 40)
                        return "\udb80\udc88";
                    if (percentage <= 50)
                        return "\udb82\udc9d";
                    if (percentage <= 60)
                        return "\udb80\udc89";
                    if (percentage <= 70)
                        return "\udb82\udc9e";
                    if (percentage <= 80)
                        return "\udb80\udc8a";
                    if (percentage <= 90)
                        return "\udb80\udc8b";
                    return "\udb80\udc85";
                }

                if (percentage <= 10)
                    return "\udb80\udc7a";
                if (percentage <= 20)
                    return "\udb80\udc7b";
                if (percentage <= 30)
                    return "\udb80\udc7c";
                if (percentage <= 40)
                    return "\udb80\udc7d";
                if (percentage <= 50)
                    return "\udb80\udc7e";
                if (percentage <= 60)
                    return "\udb80\udc7f";
                if (percentage <= 70)
                    return "\udb80\udc80";
                if (percentage <= 80)
                    return "\udb80\udc81";
                if (percentage <= 90)
                    return "\udb80\udc82";
                return "\udb80\udc79";
            }

            text: getBatteryIcon(!UPower.onBattery, batteryWidget.powerDevice.percentage * 100)
            color: "white"
            font.pixelSize: 14
        }

        DText {
            Layout.fillHeight: true
            text: Math.round(batteryWidget.powerDevice.percentage * 100) + "%"
            color: "white"
        }
    }
}
