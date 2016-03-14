import QtQuick.Controls 1.4
import QtQuick 2.5
import QtQuick.Layouts 1.1

ApplicationWindow {
    id: window

    width: 640
    height: 400

    color: "black"
    visible: true

    title: qsTr("ShaderToy.qml@qyvlik")

    MainView {
        anchors.fill: parent
        model: [
            {
                effectImage: "example/4lBXzy/Toy.gif",
                toySource: Qt.resolvedUrl("example/4lBXzy/Toy.qml"),
            },
            {
                effectImage: "example/ld3Gz2/Toy.gif",
                toySource: Qt.resolvedUrl("example/ld3Gz2/Toy.qml"),
            },
            {
                effectImage: "example/lsf3RH/Toy.gif",
                toySource: Qt.resolvedUrl("example/lsf3RH/Toy.qml"),
            },
            {
                effectImage: "example/MdX3zr/Toy.gif",
                toySource: Qt.resolvedUrl("example/MdX3zr/Toy.qml"),
            },
            {
                effectImage: "example/XlfGRj/Toy.gif",
                toySource: Qt.resolvedUrl("example/XlfGRj/Toy.qml"),
            },
            {
                effectImage: "example/XslGRr/Toy.gif",
                toySource: Qt.resolvedUrl("example/XslGRr/Toy.qml"),
            },
        ]
    }

}

