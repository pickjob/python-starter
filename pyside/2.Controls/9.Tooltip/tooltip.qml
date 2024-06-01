import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "Tooltip Controls"

    visible: true

    Column {
        spacing: 5
        anchors.centerIn: parent

        DelayButton {
            text: "Delay Button"
            hoverEnabled: true

            ToolTip.delay: 1000
            ToolTip.timeout: 5000
            ToolTip.visible: hovered
            ToolTip.text: "Something from tooltips."
        }
    }
}