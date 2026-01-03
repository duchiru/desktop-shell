import QtQuick

import "../Components"

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
}
