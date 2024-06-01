import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "Button Controls"

    visible: true

    ColumnLayout {
        spacing: 5
        anchors.centerIn: parent

        Button {
            text: "Button"
        }

        RoundButton {
            text: "RoundButton"
        }

        DelayButton {
            text: "DelayButton"
        }

        RadioButton {
            text: "RadioButton"
        }

        CheckBox {
            text: "RadioButton"
        }

        Switch {
            text: "Switch"
        }
    }
}