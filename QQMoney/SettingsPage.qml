import QtQuick 2.0

Item {
    Rectangle {
        width: parent.width
        height: 50
        color: "#992d2d2d"

        Text {
            color: "#e6e6e6"
            text: qsTr("Настройки")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 20
        }
    }
}
