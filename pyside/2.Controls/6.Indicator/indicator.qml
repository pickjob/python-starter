import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "Indicator Controls"

    visible: true

    ColumnLayout {
        spacing: 5
        anchors.centerIn: parent

        BusyIndicator {
            running: true
        }

        ProgressBar {
            indeterminate: true
        }

        RowLayout {
            ColumnLayout {
                SwipeView {
                    id: view
                    currentIndex: pageIndicator.currentIndex

                    Label {
                        text: "Page 1"
                    }
                    Label {
                        text: "Page 2"
                    }
                    Label {
                        text: "Page 3"
                    }
                }

                PageIndicator {
                    id: pageIndicator
                    count: view.count
                    currentIndex: view.currentIndex
                    interactive: true
                }
            }
        }
    }
}