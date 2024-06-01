import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "Text Controls"

    visible: true

    ColumnLayout {
        spacing: 5
        anchors.centerIn: parent

        Label {
            text: "Label here."
        }

        TextField {
            placeholderText: "TextField here."
        }

        TextArea {
            placeholderText: "TextArea here."
        }
    }
}