import QtQuick
import Quickshell.Services.UPower

DText {
    required property UPowerDevice powerDevice

    function getBatteryIcon(percentage: real, state: int): string {
        if (state === UPowerDeviceState.FullyCharged) {
            return "\udb82\udd5c";
        }

        if (state === UPowerDeviceState.Charging) {
            if (percentage <= 0.1)
                return "\udb82\udc9c";
            if (percentage <= 0.2)
                return "\udb80\udc86";
            if (percentage <= 0.3)
                return "\udb80\udc87";
            if (percentage <= 0.4)
                return "\udb80\udc88";
            if (percentage <= 0.5)
                return "\udb82\udc9d";
            if (percentage <= 0.6)
                return "\udb80\udc89";
            if (percentage <= 0.7)
                return "\udb82\udc9e";
            if (percentage <= 0.8)
                return "\udb80\udc8a";
            if (percentage <= 0.9)
                return "\udb80\udc8b";
            return "\udb80\udc85";
        }

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

    text: getBatteryIcon(powerDevice.percentage, powerDevice.state)
    color: powerDevice.percentage <= 0.2 ? "red" : "white"
    font.pixelSize: 14
}
