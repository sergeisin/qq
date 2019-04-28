import QtQuick 2.12
import QtQuick.Controls 2.5

Item {

    Column {
        width: parent.width
        height: parent.height

        Rectangle {
            width: parent.width
            height: 50
            color: "#992d2d2d"

            Text {
                color: "#e6e6e6"
                text: qsTr("Доходы")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 20

            }

        }

        Column {
            width: parent.width
            height: parent.height - 100

            ListView {
                width: parent.width
                height: (parent.height / 2 ) - 1
                spacing: 5
                clip: true
                model: ListModel {
                    ListElement {
                        direction: "+"
                        name: "Зарплата"
                    }

                    ListElement {
                        direction: "+"
                        name: "Премия"
                    }

                    ListElement {
                        direction: "+"
                        name: "Вклад"
                    }

                }

                delegate: MoneyItemDelegate {
                    itemColor: "#54e81c"
                }

                footer: Item {
                    y: 5
                    width: parent.width
                    height: 35

                    Rectangle {
                        width: 30
                        height: width
                        color: "#54e81c"
                        radius: 15
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            color: "#000000"
                            text: "+"
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.bold: true
                            anchors.fill: parent
                        }

                        MouseArea {
                            anchors.fill: parent

                            onClicked: {
                                dialog.headerTitle = "Доход"
                                dialog.articleName = ""
                                dialog.open()
                            }
                        }

                    }

                }

            }

            Rectangle {
                width: parent.width
                height: 2
                color: "#b3312dff"
            }

            ListView {
                width: parent.width
                height: (parent.height / 2 ) - 1
                verticalLayoutDirection: ListView.BottomToTop
                spacing: 5
                clip: true
                model: ListModel {
                    ListElement {
                        direction: "-"
                        name: "Квартплата"
                    }

                    ListElement {
                        direction: "-"
                        name: "Продукты"
                    }

                    ListElement {
                        direction: "-"
                        name: "Связь"
                    }

                    ListElement {
                        direction: "-"
                        name: "Кафе и рестораны"
                    }

                }

                delegate: MoneyItemDelegate {
                    itemColor: "#f80000"
                }

                footer: Item {
                    y: 5
                    width: parent.width
                    height: 35

                    Rectangle {
                        width: 30
                        height: width
                        color: "#f80000"
                        radius: 15
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            color: "#000000"
                            text: "+"
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.bold: true
                            anchors.fill: parent
                        }

                        MouseArea {
                            anchors.fill: parent

                            onClicked: {
                                dialog.headerTitle = "Доход"
                                dialog.articleName = ""
                                dialog.open()
                            }
                        }

                    }

                }
            }

        }

        Rectangle {
            width: parent.width
            height: 50
            color: "#992d2d2d"
            Text {
                color: "#e6e6e6"
                text: qsTr("Расходы")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 20
            }
        }
    }

    Dialog {
        id: dialog
        title: "Title"
        standardButtons: Dialog.Ok
        height: parent.height
        width: parent.width

        property alias headerTitle: headerText.text
        property alias articleName: dialogContentItem.name

        background: Rectangle {
            anchors.fill: parent
            color: "#992d2d2d"
        }

        header:     Rectangle {
            width: parent.width
            height: 50
            color: "#2d2d2d"

            Text {
                id: headerText
                color: "#e6e6e6"
                text: qsTr("Статья доходы / расходы")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 20
            }
        }

        contentItem: MoneyItemViewDialog {
            id: dialogContentItem
            name: ""
        }

        onAccepted: console.log("Ok clicked")
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
