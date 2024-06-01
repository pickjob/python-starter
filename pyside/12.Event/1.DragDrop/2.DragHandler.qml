// 
// DragHandler(QtQuick): MultiPointHandler
//      property:
//          xAxis
//              xAxis.activeValue: real
//              xAxis.enabled: bool
//              xAxis.maximum: real
//              xAxis.minimum: real
//          yAxis
//              yAxis.activeValue: real
//              yAxis.enabled: bool
//              yAxis.maximum: real
//              yAxis.minimum: real
//          snapMode: enumeration
//              DragHandler.SnapNever
//              DragHandler.SnapAuto
//              DragHandler.SnapWhenPressedOutsideTarget
//              DragHandler.SnapAlways
//      signal:
//          grabChanged(PointerDevice::GrabTransition transition, eventPoint point)
//          canceled(eventPoint point)
// DragEvent(QtQuick)
//      property:
//          x: real
//          y: real
//          drag.source: QtObject
//          text: string
//          colorData: color
//          formats: stringlist
//          html: string
//          keys: stringlist
//          proposedAction: flags
//          supportedActions: flags
//          urls: urllist
//          action: enumeration
//              Qt.CopyAction
//              Qt.MoveAction
//              Qt.LinkAction
//              Qt.IgnoreAction
//          accepted: bool
//          hasColor: bool
//          hasHtml: bool
//          hasText: bool
//          hasUrls: bool
//      method:
//          accept()
//          accept(enumeration action)
//          acceptProposedAction()
//          getDataAsArrayBuffer(string format): string
//          getDataAsString(string format): string