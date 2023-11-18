
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15 // RowLayout
import QtQuick.Controls 2.15 // StackView

Page {
    property alias color: bg.color
    property alias bwdText: bwd_text.text
    property alias fwdText: fwd_text.text
    signal bwdClicked();
    signal fwdClicked();

    id: root

    background: Rectangle {
        id: bg
    }

    Button {
        id: bwd_button
        anchors.right: fwd_button.left
        anchors.bottom: parent.bottom
        anchors.margins: 5
        onClicked: {
            bwdClicked()
        }

        Text {
            id: bwd_text
            anchors.centerIn: parent
            text: "Back"
        }
    }

    Button {
        id: fwd_button
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 5
        onClicked: {
            fwdClicked()
        }

        Text {
            id: fwd_text
            anchors.centerIn: parent
            text: "Forward"
        }
    }
}
