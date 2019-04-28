import QtQuick 2.0

Rectangle {
    x: 5
    width: parent.width-10
    height: 40
    color: "#b3000a69"
    radius: 10
    border.color: "#d2d2d2"
    property alias itemColor: rectangle.color
    Row {
        id: row1
        x: 5
        width: parent.width - 10
        height: parent.height

        Item {
            id: element
            width: childrenRect.width
            height: parent.height

            Rectangle {
                id: rectangle
                y: 0
                width: 20
                height: 20
                color: "#54e81c"
                radius: 10
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Text {
            color: "#d2d2d2"
            text: name
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
        }


        spacing: 10
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            dialog.headerTitle = model.direction === "+" ?
                        "Доход" : "Расход"
            dialog.articleName = name
            dialog.open()
        }
    }
}
