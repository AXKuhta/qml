import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 320
    height: 480
    visible: true
    title: qsTr("Hello World")

    SwipeView {
        id: view

        currentIndex: 0
        anchors.fill: parent

        Item {
            id: thirdPage

            Rectangle {
                anchors.fill: parent
                color: "red"

                Text {
                    text: "Red"
                    anchors.centerIn: parent
                }
            }
        }

        Item {
            id: secondPage

            Rectangle {
                anchors.fill: parent
                color: "yellow"

                Text {
                    text: "Yellow"
                    anchors.centerIn: parent
                }
            }
        }

        Item {
            id: firstPage

            Rectangle {
                anchors.fill: parent
                color: "limegreen"

                Text {
                    text: "Green"
                    anchors.centerIn: parent
                }
            }
        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
