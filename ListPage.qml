import QtQuick 2.0

BasePage {
    lightContent: false

    ListModel {
        id: sessions
        ListElement {
            title: "Introduction to QML – also known as Qt Quick"
            presenter: "Jesper Pedersen & Paul Lemire"
            room: "A08"
            color: "red"
        }
        ListElement {
            title: "Model/View programming in Qt"
            presenter: "Tobias Konig"
            room: "A04"
            color: "orange"
        }
        ListElement {
            title: "Debugging and Profiling Qt applications"
            presenter: "Volker Krause & Milian Wolff"
            room: "A04"
            color: "yellow"
        }
        ListElement {
            title: "What’s new in C++11/C++14 (with a Qt5 focus)"
            presenter: "Thomas McGuire"
            room: "A04"
            color: "blue"
        }
        ListElement {
            title: "Introduction to Multithreaded Programming with Qt"
            presenter: "Kevin Kramer"
            room: "A04"
            color: "lightblue"
        }
        ListElement {
            title: "Introduction to Modern OpenGL with Qt"
            presenter: "Sean Harmer"
            room: "A04"
            color: "green"
        }
        ListElement {
            title: "Qt for Mobile Platforms – Android/iOS"
            presenter: "Bogdan Vatra & Mike Krus"
            room: "A04"
            color: "darkgreen"
        }
        ListElement {
            title: "Introduction to Testing Qt applications with Squish"
            presenter: "Tobias Natterlund"
            room: "A04"
            color: "orange"
        }
    }

    Component {
        id: sessionCell
        Item {
            height: 60

            Rectangle {
                color: model.color
                border.color: "black"
                border.width: .5
                width: 5
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.margins: 3
                radius: 3
            }
            Text {
                x: 20
                y: 2
                width: parent.width - x
                text: model.title
                font.pixelSize: 20
            }
            Text {
                x: 20
                y: parent.height - 17 - height
                text: model.presenter
                font.italic: true
            }
            Text {
                x: 20
                y: parent.height - 2 - height
                text: "Room: " + model.room
            }
        }
    }

    Rectangle {
        id: titleBar
        height: 64
        width: parent.width
        color: "#eee"

        Text {
            anchors.centerIn: parent
            font.pixelSize: 24
            font.bold: true
            text: "KDAB Trainings"
        }
        Rectangle {
            height: 1
            y: parent.height - height
            width: parent.width
            color: "#ccc"
        }
    }

    ListView {
        width: parent.width
        y: titleBar.height
        height: parent.height - y
        model: sessions
        delegate: sessionCell
    }
}

