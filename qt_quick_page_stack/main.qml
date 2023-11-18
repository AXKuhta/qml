import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15 // RowLayout
import QtQuick.Controls 2.15 // StackView

Window {
    width: 320
    height: 480
    visible: true
    title: qsTr("Hello World")

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: red_screen
    }

    AppScreen {
        id: red_screen
        color: "red"

        bwdText: "Yellow"
        fwdText: "Green"

        onBwdClicked: stack.replace(yellow_screen)
        onFwdClicked: stack.replace(green_screen)
    }

    AppScreen {
        visible: false
        id: yellow_screen
        color: "yellow"

        bwdText: "Red"
        fwdText: "Green"

        onBwdClicked: stack.replace(red_screen)
        onFwdClicked: stack.replace(green_screen)
    }

    AppScreen {
        visible: false
        id: green_screen
        color: "lime"

        bwdText: "Yellow"
        fwdText: "Red"

        onBwdClicked: stack.replace(yellow_screen)
        onFwdClicked: stack.replace(red_screen)
    }
}
