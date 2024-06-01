import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "Dial Controls"

    visible: true

    RowLayout {
        spacing: 5
        anchors.centerIn: parent

        Dial {
            id: dial
            from: 1
            to: 10
            stepSize: 0.5
        }

        Label {
            text: dial.value
        }
    }
}