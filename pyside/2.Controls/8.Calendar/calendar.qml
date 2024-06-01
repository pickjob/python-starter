import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "Calendar Controls"

    visible: true

    GridLayout {
        columns: 2
        anchors.centerIn: parent

        DayOfWeekRow {
            Layout.column: 1
            Layout.fillWidth: true
        }

        WeekNumberColumn {
            month: grid.month
            year: grid.year

            Layout.fillHeight: true
        }

        MonthGrid {
            id: grid

            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}