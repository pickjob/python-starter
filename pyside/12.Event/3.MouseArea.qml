// 
// MouseArea(QtQuick):
//      property:
//          mouseX: real
//          mouseY: real
//          pressAndHoldInterval: int
//          acceptedButtons: Qt::MouseButtons
//          pressedButtons: MouseButtons
//              Qt.LeftButton
//              Qt.RightButton
//              Qt.MiddleButton
//          enabled: bool
//          hoverEnabled: bool
//          pressed: bool
//          preventStealing: bool
//          propagateComposedEvents: bool
//          scrollGestureEnabled: bool
//          containsMouse: bool
//          containsPress: bool
//          drag
//              drag.target: Item
//              drag.threshold: real
//              drag.active: bool
//              drag.filterChildren: bool
//              drag.smoothed: bool
//              drag.axis: enumeration
//              drag.minimumX: real
//              drag.maximumX: real
//              drag.minimumY: real
//              drag.maximumY: real
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
//      signal:
//          clicked(MouseEvent mouse)
//          doubleClicked(MouseEvent mouse)
//          entered()
//          exited()
//          positionChanged(MouseEvent mouse)
//          pressAndHold(MouseEvent mouse)
//          pressed(MouseEvent mouse)
//          released(MouseEvent mouse)
//          wheel(WheelEvent wheel)
//          canceled()
// MouseEvent(QtQuick):
//      property:
//          x: real
//          y: real
//          button: enumeration
//              Qt.LeftButton
//              Qt.RightButton
//              Qt.MiddleButton
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
//          flags: int
//          accepted: bool
//          wasHeld: bool