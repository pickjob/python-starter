import QtCore
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import starter.model.swissknife

ColumnLayout {
    spacing: 5

    SplitView {
        id: convertSplitView

        TextArea {
            id: convertInput
            placeholderText: "Input text here"
            placeholderTextColor: Qt.darker(Material.foreground, 1.3)
        }

        TextArea {
            id: convertOutput
            placeholderText: "Ouput text here"
            placeholderTextColor: Qt.darker(Material.foreground, 1.3)
        }

        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.margins: 5

        Component.onCompleted: {
            convertSplitView.restoreState(convertSetting.value("TextConvertSplitView"))
        }
        Component.onDestruction: {
            convertSetting.setValue("TextConvertSplitView", convertSplitView.saveState())
        }
    }

    RowLayout {
        spacing: 5

        ComboBox {
            id: convertComboBox
            textRole: "DisplayRole"
            valueRole: "ValueRole"
            model: convertModel
            Material.foreground: Material.Green
        }

        Button {
            text: "Base64"
            onClicked: {
                convertModel.submitConvertTask(convertComboBox.currentValue, convertInput.text)
            }
        }

        Layout.alignment: Qt.AlignCenter
        Layout.fillWidth: true
        Layout.margins: 5
    }

    TextConvertModel {
        id: convertModel

        onResult: (output) => {
            convertOutput.text = output
        }
    }

    Settings {
        id: convertSetting
    }
}