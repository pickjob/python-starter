import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "Tumbler Controls"

    visible: true

    Column {
        spacing: 5
        anchors.centerIn: parent

        Rectangle {
            width: frame.implicitWidth + 10
            height: frame.implicitHeight + 10

            FontMetrics {
                id: fontMetrics
            }

            Component {
                id: delegateComponent

                Label {
                    text: formatText(Tumbler.tumbler.count, modelData)
                    opacity: 1.0 - Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount / 2)
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: fontMetrics.font.pixelSize * 1.25
                }
            }

            Frame {
                id: frame
                padding: 0
                anchors.centerIn: parent

                Row {
                    id: row

                    Tumbler {
                        id: hoursTumbler
                        model: 12
                        delegate: delegateComponent
                    }

                    Tumbler {
                        id: minutesTumbler
                        model: 60
                        delegate: delegateComponent
                    }

                    Tumbler {
                        id: amPmTumbler
                        model: ["AM", "PM"]
                        delegate: delegateComponent
                    }
                }
            }
        }
    }
    function formatText(count, modelData) {
        var data = count === 12 ? modelData + 1 : modelData;
        return data.toString().length < 2 ? "0" + data : data;
    }
}