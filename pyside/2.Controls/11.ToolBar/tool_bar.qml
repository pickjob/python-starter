import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "Tooltip Controls"

    visible: true

    ToolBar {
        anchors.centerIn: parent

        RowLayout {
            ToolButton {
                text: "One"
            }
            ToolButton {
                text: "Two"
            }
            ToolButton {
                text: "Three"
            }
            ToolSeparator {
                orientation: Qt.Vertical
            }
            ToolButton {
                text: "Last"
            }
        }
    }
}