import QtQuick 2.0
import QtQuick.Controls 2.3

Item {

    Column {
        id: column
        y: 50
        width: parent.width * 2 / 3
        height: parent.height - 50
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            width: parent.width
            height: parent.height / 4
            color: "#ffffff"
            text: qsTr("Остаток:")
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
        }

        TextField {
            id: textField
            width: parent.width
            text: qsTr("55650")
            font.bold: true
            font.pointSize: 40
            font.family: "Courier"
            placeholderText: "Остаток"
            horizontalAlignment: Text.AlignHCenter
            readOnly: true
        }

    }


}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
