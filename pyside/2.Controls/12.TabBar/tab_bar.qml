import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    title: "TabBar Controls"

    visible: true

    TabBar {
        id: tabBar
        width: parent.width
        anchors.centerIn: parent

        TabButton {
            text: "TabOne"
        }
        TabButton {
            text: "TabTwo"
        }
        TabButton {
            text: "TabThree"
        }
    }
}