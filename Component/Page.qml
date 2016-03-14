import QtQuick 2.0
import QtQuick.Controls 1.2

Rectangle {
    id: page
    color: "transparent"

    width: 640
    height: 360

    property alias toySource: loader.source

    Rectangle {
        id: header
        width: parent.width
        height: titleText.contentHeight * 2
        color: "black"

        Button {
            text: qsTr("back")
            anchors.verticalCenter: parent.verticalCenter
            onClicked: {
                try {
                    page.Stack.view.pop();
                } catch(e) {
                    console.log(e);
                }
            }
        }

        Text {
            id: titleText
            anchors.centerIn: parent
            text: toy ? toy.title: ""
            color: "white"
            font.pointSize: 15
        }

        Button {
            text: qsTr("online demo")
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            onClicked: {
                try {
                    Qt.openUrlExternally(toy.base);
                } catch(e) {
                    console.log(e);
                }
            }
        }
    }

    Loader {
        id: loader

        anchors.top: header.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
    }

    property ShaderToy toy: loader.item

}

