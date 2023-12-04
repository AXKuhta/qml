import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15 // GridLayout
import QtQuick.Controls 2.15

Window {
    width: 320
    height: 480
    visible: true
    title: qsTr("Hello World")

    // Можно использовать переменную вместо невидимого поля
    property string password: ""

    ColumnLayout {
        anchors.centerIn: parent

        Rectangle {
            id: pin_display

            width: 220
            height: 80

            ColumnLayout {
                anchors.centerIn: parent
                spacing: 10

                Text {
                    text: "Enter your password:"
                }

                Row {
                    Layout.alignment: Qt.AlignCenter
                    spacing: 5

                    Repeater {
                        model: 6

                        Label {
                            font.pixelSize: 36
                            text: "*"

                            color: index < password.length ? "black" : "lightgray"
                        }
                    }
                }
            }
        }

        Rectangle {
            id: keypad

            width: 220
            height: 160

            GridLayout {
                columns: 3
                columnSpacing: 5
                rowSpacing: 5

                anchors.fill: parent

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "1"

                    onClicked: password += text
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "2"

                    onClicked: password += text
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "3"

                    onClicked: password += text
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "4"

                    onClicked: password += text
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "5"

                    onClicked: password += text
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "6"

                    onClicked: password += text
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "7"

                    onClicked: password += text
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "8"

                    onClicked: password += text
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "9"

                    onClicked: password += text
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "0"

                    onClicked: password += text
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "Clear"

                    onClicked: password = ""
                }
            }
        }

        Rectangle {
            width: 220
            height: 40

            Button {
                width: 70
                text: "Log in"

                onClicked: {
                    console.log("Password:", password)
                }
            }
        }
    }
}
