import QtQuick 2.4
import QtQuick.Controls 1.3

Rectangle {
    id: page
    color: "transparent"

    readonly property ShaderToy toy: loader.item

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
            text: page.toy ? page.toy.title: ""
            color: "white"
            font.pointSize: 15
        }

        Button {
            text: qsTr("online demo")
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            onClicked: {
                try {
                    Qt.openUrlExternally(page.toy.base);
                } catch(e) {
                    console.log(e);
                }
            }
        }
    }

    Loader {
        id: loader
        anchors.top: header.bottom
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left: parent.left
    }
}

