import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    Layout.fillWidth: true
    height: 150

    Rectangle {
        anchors.fill: parent
        color: "lightgray"

        Text {
            text: qsTr("Card")
            anchors.centerIn: parent
        }
    }
}
