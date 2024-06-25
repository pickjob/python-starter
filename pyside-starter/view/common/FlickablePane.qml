import QtQuick
import QtQuick.Controls

Pane {
    default property alias content: contentPane.contentItem

    Flickable {
        contentHeight: contentPane.implicitHeight
        flickableDirection: Flickable.AutoFlickIfNeeded

        Pane {
            id: contentPane
            width: parent.width
        }

        ScrollIndicator.vertical: ScrollIndicator { }

        anchors.fill: parent
    }
}