import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    title: "ComboBox Controls"

    visible: true

    ComboBox {
        editable: true
        model: ListModel {
            id: model
            ListElement { text: "Banana" }
            ListElement { text: "Apple" }
            ListElement { text: "Coconut" }
        }
        onAccepted: {
            if (find(editText) === -1)
            {
                model.append({text: editText})
            }
        }
    }
}