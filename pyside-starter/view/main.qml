import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "." as App

ApplicationWindow {

    id: mainWindow
    title: "PySide Starter"
    visible: true

    StackLayout {
        id: mainStackLayout
        width: parent.width

        currentIndex: footerTabBar.currentIndex

        App.SwissKnife {
        }

        anchors.fill: parent
    }

    footer: TabBar {
        id: footerTabBar
        width: parent.width

        TabButton {
            text: "SwissKnife"
        }
    }

    Component.onCompleted: {
        // 居中窗口
        mainWindow.x = Screen.width / 4.0
        mainWindow.y = Screen.height / 4.0
        mainWindow.width = Screen.width / 2.0
        mainWindow.height = Screen.height / 2.0
    }
}