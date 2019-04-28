import QtQuick 2.12
import QtQuick.Controls 2.5

Item {
//    background: Item {
//        anchors.fill: parent
//    }

    Button {
        id: button
        text: qsTr("Настройки")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter

        onClicked: view.currentIndex = 3
    }

    RoundButton {
        id: roundButton
        x: 0
        y: 40
        width: 194
        height: width
        text: "Рассчитать"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        onClicked: dialog.open()
    }

    Dialog {
        id: dialog
        title: "Title"
        standardButtons: Dialog.Ok
        height: parent.height
        width: parent.width

        background: Rectangle {
            anchors.fill: parent
            color: "#992d2d2d"
        }

        header:     Rectangle {
            width: parent.width
            height: 50
            color: "#992d2d2d"

            Text {
                color: "#e6e6e6"
                text: qsTr("Результаты")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 20
            }
        }

        contentItem: ResultsPage {

        }

        onAccepted: console.log("Ok clicked")
    }

    TextField {
        id: textField
        x: 0
        text: qsTr("")
        placeholderText: "Введите сумму"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 25
    }



}
