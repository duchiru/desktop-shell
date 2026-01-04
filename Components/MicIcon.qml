import QtQuick

DText {
    required property var source

    function getIcon(muted) {
        return muted ? "\udb80\udf6d" : "\udb80\udf6c";
    }
    
    text: getIcon(source.audio.muted)
    color: "white"
    font.pixelSize: 14

    MouseArea {
        anchors.fill: parent
        onClicked: {
            parent.source.audio.muted = !parent.source.audio.muted;
        }
    }
}