import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    property alias text: text_area.text
    property alias color: rect.color

    Layout.fillWidth: true
    height: 150

    Rectangle {
        id: rect

        anchors.fill: parent
        color: "lightgray"

        Text {
            id: text_area

            text: qsTr("Card")
            anchors.centerIn: parent
        }
    }
}
