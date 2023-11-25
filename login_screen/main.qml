import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 320
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        anchors.centerIn: parent
        width: 220
        height: 160

        TextField {
            id: usernameField

            placeholderText: "Username..."
            font.pixelSize: 16

            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
        }

        TextField {
            id: passwordField

            placeholderText: "Password..."
            font.pixelSize: 16

            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width

            anchors.top: usernameField.bottom
            anchors.topMargin: 20

            echoMode: TextInput.Password
        }

        Button {
            text: "Log in"

            anchors.bottom: parent.bottom
            anchors.left: parent.left

            onClicked: {
                console.log("Username:", usernameField.text)
                console.log("Password:", passwordField.text)
            }
        }

        Button {
            text: "Clear"

            anchors.bottom: parent.bottom
            anchors.right: parent.right

            onClicked: {
                usernameField.clear()
                passwordField.clear()
            }
        }
    }
}
