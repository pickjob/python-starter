// 
// PointerHandler: (QtQuick)
//      property:
//          target: Item
//          parent: Item
//          dragThreshold: int
//          margin: real
//          active: bool
//          enabled: bool
//          cursorShape: Qt::CursorShape
//              Qt.ArrowCursor
//              Qt.UpArrowCursor
//              Qt.CrossCursor
//              Qt.WaitCursor
//              Qt.IBeamCursor
//              Qt.SizeVerCursor
//              Qt.SizeHorCursor
//              Qt.SizeBDiagCursor
//              Qt.SizeFDiagCursor
//              Qt.SizeAllCursor
//              Qt.BlankCursor
//              Qt.SplitVCursor
//              Qt.SplitHCursor
//              Qt.PointingHandCursor
//              Qt.ForbiddenCursor
//              Qt.WhatsThisCursor
//              Qt.BusyCursor
//              Qt.OpenHandCursor
//              Qt.ClosedHandCursor
//              Qt.DragCopyCursor
//              Qt.DragMoveCursor
//              Qt.DragLinkCursor
//          grabPermissions: flags
//              PointerHandler.TakeOverForbidden
//              PointerHandler.CanTakeOverFromHandlersOfSameType
//              PointerHandler.CanTakeOverFromHandlersOfDifferentType
//              PointerHandler.CanTakeOverFromItems
//              PointerHandler.CanTakeOverFromAnything
//              PointerHandler.ApprovesTakeOverByHandlersOfSameType
//              PointerHandler.ApprovesTakeOverByHandlersOfDifferentType
//              PointerHandler.ApprovesTakeOverByItems
//              PointerHandler.ApprovesCancellation
//              PointerHandler.ApprovesTakeOverByAnything
//      signal:
//          grabChanged(PointerDevice::GrabTransition transition, eventPoint point)
//              transition:
//                  PointerDevice.GrabExclusive
//                  PointerDevice.UngrabExclusive
//                  PointerDevice.CancelGrabExclusive
//                  PointerDevice.GrabPassive
//                  PointerDevice.UngrabPassive
//                  PointerDevice.CancelGrabPassive
//          canceled(eventPoint point)
// PointerDeviceHandler: PointerHandler (QtQuick)
//     property:
//         acceptedButtons: flags
//             Qt.LeftButton
//             Qt.RightButton
//         acceptedModifiers: flags
//             Qt.NoModifier
//             Qt.ControlModifier
//             Qt.ShiftModifier
//             Qt.AltModifier
//         acceptedDevices: flags
//             PointerDevice.Mouse
//             PointerDevice.TouchPad
//             PointerDevice.AllDevices
//         acceptedPointerTypes: flags
//             PointerDevice.AllPointerTypes
//     signal:
//         grabChanged(PointerDevice::GrabTransition transition, eventPoint point)
//             transition:
//                 PointerDevice.GrabExclusive
//                 PointerDevice.UngrabExclusive
//                 PointerDevice.CancelGrabExclusive
//                 PointerDevice.GrabPassive
//                 PointerDevice.UngrabPassive
//                 PointerDevice.CancelGrabPassive
//         canceled(eventPoint point)
// SinglePointHandler: PointerDeviceHandler (QtQuick)
//     property:
//         point: handlerPoint
// MultiPointHandler: PointerDeviceHandler (QtQuick)
//     property:
//         centroid: QtQuick::handlerPoint
//         minimumPointCount: int
//         maximumPointCount: int
// 