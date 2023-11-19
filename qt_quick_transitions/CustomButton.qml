import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    property alias text: textarea.text
    property color default_color: "lightgray"
    property color hover_color: "skyblue"
    property color held_color: "darkorange"
    property bool inactive: false
    signal clicked()

    id: root

    Layout.fillHeight: true
    Layout.fillWidth: true

    Rectangle {
        id: rect

        anchors.fill: parent
        anchors.topMargin: 2
        anchors.bottomMargin: 2
        border.width: 1
        border.color: "gray"
        opacity: inactive ? 0.5 : 1.0

        states: [
            State {
                name: "idle"
                PropertyChanges {
                    target: rect
                    color: default_color
                }
            },
            State {
                name: "hover"
                PropertyChanges {
                    target: rect
                    color: hover_color

                }
            },
            State {
                name: "held"
                PropertyChanges {
                    target: rect
                    color: held_color
                }
            }
        ]

        state: mousearea.containsPress ? "held" : mousearea.containsMouse ? "hover" : "idle"

        Text {
            id: textarea

            text: parent.width
            anchors.centerIn: parent
        }

        MouseArea {
            id: mousearea

            anchors.fill: parent
            hoverEnabled: true

            onClicked: {
                root.clicked()
            }
        }

        transitions: [
            Transition {
                from: ["idle", "hover", "held"]
                to: ["idle", "hover", "held"]
                PropertyAnimation {
                    targets: rect
                    properties: "color"
                    duration: 100
                }
            }
        ]
    }
}
