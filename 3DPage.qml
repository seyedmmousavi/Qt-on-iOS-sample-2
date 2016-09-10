import QtQuick 2.4
import QtQuick.Scene3D 2.0

BasePage {
    lightContent: false

    Scene3D {
        id: scene3D
        anchors.fill: parent
        focus: true
        aspects: "input"
        SimpleScene {}
    }
}
