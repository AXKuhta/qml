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
                        anchors.centerIn: parent
                        text: "header"
                    }
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            border.color: "darkgray"
            border.width: 1

            GridLayout {
                anchors.fill: parent
                columns: 2
                clip: true // Не отрисовывать то, что вышло за границы

                anchors.margins: 5
                columnSpacing: 5
                rowSpacing: 5

                Card {
                }

                Card {
                }

                Card {
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
                }

                CustomButton {
                }

                CustomButton {
                }
            }
        }
    }
}
