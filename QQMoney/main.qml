import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    width: 250
    height: 480
    title: qsTr("Stack")
    background:     Image {
        width: parent.width
        sourceSize.width: width
        source: "qrc:/background.jpeg"

        Rectangle {
            anchors.fill: parent
            color: "#e600003d"
        }
    }

//    header: ToolBar {
//        contentHeight: toolButton.implicitHeight

//        ToolButton {
//            id: toolButton
//            visible: stackView.depth > 1
//            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
//            font.pixelSize: Qt.application.font.pixelSize * 1.6
//            onClicked: {
//                if (stackView.depth > 1) {
//                    stackView.pop()
//                } else {
//                    drawer.open()
//                }
//            }
//        }

//        Label {
//            text: stackView.currentItem.title
//            anchors.centerIn: parent
//        }
//    }

    SwipeView {
        id: view

        currentIndex: 0
        anchors.fill: parent

        MainPage {
        }

        MoneyInputPage {
        }

        CalendPage {
        }

        SettingsPage {
        }

    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
