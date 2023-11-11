import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    property alias text: textarea.text

    Layout.fillHeight: true
    Layout.fillWidth: true

    Rectangle {
        id: rect

        anchors.fill: parent
        anchors.topMargin: 2
        anchors.bottomMargin: 2
        border.width: 1
        border.color: "gray"
        color: "lightgray"

        Text {
            id: textarea

            text: parent.width
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onEntered: parent.color = "skyblue"
            onExited: parent.color = "lightgray"
        }
    }
}
