import QtQuick.Controls 1.4
import QtQuick 2.5
import QtQuick.Layouts 1.1

import "./Component"

StackView {
    id: stackView

    property alias model: view.model

    initialItem: ListView {
        id: view
        width: stackView.width
        height: stackView.height

        delegate: Rectangle {
            id: item

            width: window.width
            height: 100

            border.color: "#ccc"
            border.width: 1

            Row {
                anchors.fill: parent

                AnimatedImage {
                    // height / width
                    property real radio: 16 / 9
                    width: item.height * radio
                    height: item.height

                    source: view.model[index].effectImage
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if(item.height == 100) {
                                item.height = 100 * 2;
                            } else {
                                item.height = 100 ;
                            }
                        }
                    }
                }

                Button {
                    text: qsTr("Watch Demo")

                    onClicked: {
                        stackView.push({item:pageCom,
                                           properties:{
                                               toySource:view.model[index].toySource
                                           }});
                    }
                }

            }

            Behavior on height {  NumberAnimation{ } }
        }
    }

    Component {
        id: pageCom
        Page {
            // toySource
            width: stackView.width
            height: stackView.height
        }
    }
}

