import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "Menu Controls"

    visible: true

    ColumnLayout {
        spacing: 5
        anchors.centerIn: parent

        Rectangle {
            width: 100
            height: 100
            color: "#ABCDEF"

            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            MouseArea {
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                anchors.fill: parent

                onClicked: {
                    if (mouse.button === Qt.RightButton)
                        contextMenu.popup()
                }
                onPressAndHold: {
                    if (mouse.source === Qt.MouseEventNotSynthesized)
                        contextMenu.popup()
                }

                Menu {
                    id: contextMenu
                    MenuItem { text: "Cut" }
                    MenuItem { text: "Copy" }
                    MenuItem { text: "Paste" }
                }
            }
        }

        Rectangle {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            MenuBar {
                Menu {
                    title: "&File"
                    Action { text: "&New..." }
                    Action { text: "&Open..." }
                    Action { text: "&Save" }
                    Action { text: "Save &As..." }
                    MenuSeparator { }
                    Action { text: "&Quit" }
                }
                Menu {
                    title: "&Edit"
                    Action { text: "Cu&t" }
                    Action { text: "Copy" }
                    Action { text: "&Paste" }
                }
                Menu {
                    title: "&Help"
                    Action { text: "&About" }
                }
            }
        }
    }
}