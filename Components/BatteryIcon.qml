import QtQuick
import Quickshell.Services.UPower

DText {
    required property UPowerDevice powerDevice

    function getBatteryIcon(percentage: real): string {
        if (percentage <= 0.1)
            return "\udb80\udc7a";
        if (percentage <= 0.2)
            return "\udb80\udc7b";
        if (percentage <= 0.3)
            return "\udb80\udc7c";
        if (percentage <= 0.4)
            return "\udb80\udc7d";
        if (percentage <= 0.5)
            return "\udb80\udc7e";
        if (percentage <= 0.6)
            return "\udb80\udc7f";
        if (percentage <= 0.7)
            return "\udb80\udc80";
        if (percentage <= 0.8)
            return "\udb80\udc81";
        if (percentage <= 0.9)
            return "\udb80\udc82";
        return "\udb80\udc79";
    }

    text: getBatteryIcon(powerDevice.percentage)
    color: powerDevice.percentage <= 0.2 ? "red" : "white"
    font.pixelSize: 14
}
