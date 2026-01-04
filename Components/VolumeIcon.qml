import QtQuick

DText {
    required property var sink
    
    function getIcon(muted, volume) {
        if (muted) {
            return "\udb81\udf5f";
        }

        if (volume <= 0.1) return "\udb81\udd7f";
        if (volume <= 0.55) return "\udb81\udd80";
        return "\udb81\udd7e";
    }
    
    text: getIcon(sink.audio.muted, sink.audio.volume)
    color: "white"
    font.pixelSize: 14

    MouseArea {
        anchors.fill: parent
        onClicked: {
            parent.sink.audio.muted = !parent.sink.audio.muted;
        }
    }
}