import QtQuick 2.0
import QtQuick.Controls 2.5

Item {

    Column {
        width: parent.width
        height: parent.height
        spacing: 5

        Rectangle {
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

        Flickable {
            width: parent.width
            height: 40
            contentWidth: filterRow.width
            flickableDirection: Flickable.HorizontalFlick
            clip: true

            Row {
                id: filterRow
                height: parent.height
                spacing: 7

                Button {
                    height: parent.height
                    text: qsTr("Доходы")
                }

                Button {
                    height: parent.height
                    text: qsTr("Расходы")
                }

                Button {
                    height: parent.height
                    text: qsTr("Зарплата")
                }

                Button {
                    height: parent.height
                    text: qsTr("Премия")
                }

                Button {
                    height: parent.height
                    text: qsTr("Квартплата")
                }

                Button {
                    height: parent.height
                    text: qsTr("Связь")
                }

                Button {
                    height: parent.height
                    text: qsTr("Продукты")
                }
            }
        }

        CalendItem {
            width: parent.width
            height: parent.height - 100

        }

    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
