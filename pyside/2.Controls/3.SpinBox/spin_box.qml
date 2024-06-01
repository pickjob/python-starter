import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "SpinBox Controls"

    visible: true

    RowLayout {
        spacing: 5
        anchors.centerIn: parent

        SpinBox {
            id: spinBox
            from: 1
            to: 10
            stepSize: 2
        }
        Label {
            text: spinBox.value
        }
    }
}