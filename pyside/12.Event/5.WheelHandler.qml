// 
// WheelHandler(QtQuick): SinglePointHandler
//      property:
//          target: Item
//          property: string
//          parent: Item
//          rotation: real
//          rotationScale: real
//          targetScaleMultiplier: real
//          orientation: enumeration
//              Qt.Vertical
//          invertible: bool
//          blocking: bool
//          targetTransformAroundCursor: bool
//      signal:
//          wheel(WheelEvent event)
//      signal:
//          grabChanged(PointerDevice::GrabTransition transition, eventPoint point)
//          wheel(WheelEvent event)
//          canceled(eventPoint point)
// WheelEvent: (QtQuick)
//      property:
//          x: real
//          y: real
//          buttons: int
//              Qt.LeftButton
//              Qt.RightButton
//              Qt.MiddleButton
//          modifiers: int
//              Qt.NoModifier
//              Qt.ControlModifier
//              Qt.ShiftModifier
//              Qt.AltModifier
//              Qt.MetaModifier
//          pixelDelta: point
//          accepted: bool
//          angleDelta: point
//          inverted: bool