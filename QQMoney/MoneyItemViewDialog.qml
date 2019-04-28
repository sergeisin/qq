import QtQuick 2.0
import QtQuick.Controls 2.5

Column {
    property alias name: textField.text

    spacing: 7
    Column {
        id: fieldsColumn
        width: parent.width
        height: childrenRect.height
        spacing: 7
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            color: "#cecece"
            width: parent.width
            height: childrenRect.height

            TextField {
                id: textField
                width: parent.width
                height: 35
                text: qsTr("")
                font.bold: true
                font.pointSize: 16
                font.family: "Courier"
                placeholderText: "Название"
                horizontalAlignment: Text.AlignHCenter
            }
        }


        ComboBox {
            id: comboBox
            width: parent.width
            height: 35
            model: ListModel {
                id: cbItems
                ListElement { text: "Ежедневно"}
                ListElement { text: "Еженедельно"}
                ListElement { text: "Ежемесячно"}
                ListElement { text: "Ежеквартально"}
                ListElement { text: "Ежегодно"}
            }
        }

    }

    CalendItem {
        width: parent.width
        height: parent.height - fieldsColumn.height
    }

}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
