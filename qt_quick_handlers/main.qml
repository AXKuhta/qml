import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        anchors.fill: parent
        spacing: 5

        Rectangle {
            id: rect_top
            color: "lightgray"
            height: 50

            Layout.fillWidth: true

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                spacing: 4

                CustomButton {
                    text: "back"
                    width: 50
                    Layout.fillWidth: false
                }

                Item {
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    Text {
                        id: header_text

                        anchors.centerIn: parent
                        text: "Screen 1"
                    }
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            border.color: "darkgray"
            border.width: 1

            // Первый экран
            GridLayout {
                id: screen1

                anchors.fill: parent
                columns: 2
                clip: true

                anchors.margins: 5
                columnSpacing: 5
                rowSpacing: 5

                visible: true

                children: [
                    Card {
                        text: "Screen 1, card 1"
                        color: "slategray"
                    },

                    Card {
                        text: "Screen 1, card 2"
                        color: "slategray"
                    },

                    Card {
                        text: "Screen 1, card 3"
                        color: "slategray"
                    }
                ]

                Item {
                    Layout.columnSpan: 2
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
            }

            // Второй экран
            GridLayout {
                id: screen2

                anchors.fill: parent
                columns: 2
                clip: true

                anchors.margins: 5
                columnSpacing: 5
                rowSpacing: 5

                visible: false

                Card {
                    text: "Screen 2, card 1"
                    color: "darkorange"
                }

                Card {
                    text: "Screen 2, card 2"
                    color: "darkorange"
                }

                Card {
                    text: "Screen 2, card 3"
                    color: "darkorange"
                }

                // Наполнитель
                Item {
                    Layout.columnSpan: 2
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
            }

            // Третий экран
            GridLayout {
                id: screen3

                anchors.fill: parent
                columns: 2
                clip: true

                anchors.margins: 5
                columnSpacing: 5
                rowSpacing: 5

                visible: false

                Card {
                    text: "Screen 3, card 1"
                    color: "teal"
                }

                Card {
                    text: "Screen 3, card 2"
                    color: "teal"
                }

                Card {
                    text: "Screen 3, card 3"
                    color: "teal"
                }

                // Наполнитель
                Item {
                    Layout.columnSpan: 2
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
            }
        }

        Rectangle {
            id: rect_bottom
            color: "lightgray"
            height: 50

            Layout.fillWidth: true

            // Горизонтальные отступы: 4
            // Вертикальные отступы: 2
            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                spacing: 4

                CustomButton {
                    mousearea.onClicked: function() {
                        header_text.text = "Screen 1"
                        screen1.visible = true
                        screen2.visible = false
                        screen3.visible = false
                    }
                }

                CustomButton {
                    mousearea.onClicked: function() {
                        header_text.text = "Screen 2"
                        screen1.visible = false
                        screen2.visible = true
                        screen3.visible = false
                    }
                }

                CustomButton {
                    mousearea.onClicked: function() {
                        header_text.text = "Screen 3"
                        screen1.visible = false
                        screen2.visible = false
                        screen3.visible = true
                    }
                }
            }
        }
    }
}
