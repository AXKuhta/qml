import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 320
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: view.top
        bottomPadding: 50

        text: "Пролистываемые картинки:"
    }

    SwipeView {
        id: view

        spacing: 10

        currentIndex: 0
        anchors.centerIn: parent
        width: 200
        height: 200
        clip: true

        Item {
            id: thirdPage

            Image {
                source: "images/chris-charles-9APFPoNb9iw-unsplash.jpg"
                fillMode: Image.PreserveAspectCrop
                anchors.fill: parent
            }
        }

        Item {
            id: secondPage

            Image {
                source: "images/keyur-nandaniya-vu0gvM5he8o-unsplash.jpg"
                fillMode: Image.PreserveAspectCrop
                anchors.fill: parent
            }
        }

        Item {
            id: firstPage

            Image {
                source: "images/tianhao-zhang-fVDSSAvDj5I-unsplash.jpg"
                fillMode: Image.PreserveAspectCrop
                anchors.fill: parent
            }
        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.top: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
