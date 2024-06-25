import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "../" as App

Page {
    header: TabBar {
        id: swissKnifeTabBar

        TabButton {
            text: "TextConvert"
        }
    }

    StackLayout {
        id: swissKnifeStackLayout
        width: parent.width

        currentIndex: swissKnifeTabBar.currentIndex

        App.TextConvert {
        }

        anchors.fill: parent
    }
}