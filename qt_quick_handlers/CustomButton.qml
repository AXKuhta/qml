import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    property alias text: textarea.text
    property color default_color: "lightgray"
    property color hover_color: "skyblue"
    property color held_color: "darkorange"

    Layout.fillHeight: true
    Layout.fillWidth: true

    Rectangle {
        id: rect

        anchors.fill: parent
        anchors.topMargin: 2
        anchors.bottomMargin: 2
        border.width: 1
        border.color: "gray"
        color: default_color

        Text {
            id: textarea

            text: parent.width
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onEntered: parent.color = hover_color
            onExited: parent.color = default_color
            onPressed: parent.color = held_color
            onReleased: parent.color = default_color
        }
    }
}
