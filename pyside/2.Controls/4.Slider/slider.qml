import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "Slider Controls"

    visible: true

    ColumnLayout {
        spacing: 10
        anchors.centerIn: parent

        RowLayout {
            Slider {
                id: slider
                from: 0
                to: 100
                stepSize: 1
            }
            Label {
                text: slider.value
            }
        }

        RowLayout {
            RangeSlider {
                id: rangeSlider
                from: 0
                to: 100
                stepSize: 0.5
                first.value: 20
                second.value: 80
            }
            Label {
                text: rangeSlider.first.value + " ~ " + rangeSlider.second.value
            }
        }
    }
}