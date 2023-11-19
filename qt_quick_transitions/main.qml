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

        // Верхняя навигационная панель
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
                    id: back_button

                    text: "back"
                    width: 50
                    Layout.fillWidth: false

                    onClicked: {
                        show_screen1()
                    }
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

            states: [
                State {
                    name: "back_button_disabled"
                    PropertyChanges {
                        target: back_button
                        visible: false
                    }
                },
                State {
                    name: "back_button_enabled"
                    PropertyChanges {
                        target: back_button
                        visible: true
                    }
                }
            ]

            state: "back_button_disabled"
        }

        // Контент
        Rectangle {
            id: screen_rect

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

            states: [
                State {
                    name: "show_screen1"
                    PropertyChanges {
                        target: screen1
                        //visible: true
                        opacity: 1.0
                    }
                    PropertyChanges {
                        target: screen2
                        //visible: false
                        opacity: 0.0
                    }
                    PropertyChanges {
                        target: screen3
                        //visible: false
                        opacity: 0.0
                    }
                },
                State {
                    name: "show_screen2"
                    PropertyChanges {
                        target: screen1
                        //visible: false
                        opacity: 0.0
                    }
                    PropertyChanges {
                        target: screen2
                        //visible: true
                        opacity: 1.0
                    }
                    PropertyChanges {
                        target: screen3
                        //visible: false
                        opacity: 0.0
                    }
                },
                State {
                    name: "show_screen3"
                    PropertyChanges {
                        target: screen1
                        //visible: false
                        opacity: 0.0
                    }
                    PropertyChanges {
                        target: screen2
                        //visible: false
                        opacity: 0.0
                    }
                    PropertyChanges {
                        target: screen3
                        //visible: true
                        opacity: 1.0
                    }
                }
            ]

            transitions: [
                Transition {
                    PropertyAnimation {
                        properties: "opacity"
                        duration: 250
                    }
                }
            ]

            state: "show_screen1"
        }

        // Нижняя навигационная панель
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
                    id: btn1
                    inactive: false

                    onClicked: function() {
                        show_screen1()
                    }
                }

                CustomButton {
                    id: btn2
                    inactive: true

                    onClicked: function() {
                        show_screen2()
                    }
                }

                CustomButton {
                    id: btn3
                    inactive: true

                    onClicked: function() {
                        show_screen3()
                    }
                }
            }
        }
    }

    // Функции перехода между состояниями
    function show_screen1() {
        header_text.text = "Screen 1"
        screen_rect.state = "show_screen1"
        rect_top.state = "back_button_disabled"

        btn1.inactive = false
        btn2.inactive = true
        btn3.inactive = true
    }

    function show_screen2() {
        header_text.text = "Screen 2"
        screen_rect.state = "show_screen2"
        rect_top.state = "back_button_enabled"

        btn1.inactive = true
        btn2.inactive = false
        btn3.inactive = true
    }

    function show_screen3() {
        header_text.text = "Screen 3"
        screen_rect.state = "show_screen3"
        rect_top.state = "back_button_enabled"

        btn1.inactive = true
        btn2.inactive = true
        btn3.inactive = false
    }
}
