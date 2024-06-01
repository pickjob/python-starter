// 
// Flickable(QtQuick): Item
//      property:
//          contentItem: Item
//          contentWidth: real
//          contentHeight: real
//          flickableDirection: enumeration
//              Flickable.AutoFlickDirection (default)
//              Flickable.AutoFlickIfNeeded
//              Flickable.HorizontalFlick
//              Flickable.VerticalFlick
//              Flickable.HorizontalAndVerticalFlick
//          moving: bool
//          movingHorizontally: bool
//          movingVertically: bool
//          horizontalOvershoot: real
//          horizontalVelocity: real
//          verticalOvershoot: real
//          verticalVelocity: real
//          信息:
//              atXBeginning: bool
//              atXEnd: bool
//              atYBeginning: bool
//              atYEnd: bool
//          drag:
//              dragging: bool
//              draggingHorizontally: bool
//              draggingVertically: bool
//              flicking: bool
//              flickingHorizontally: bool
//              flickingVertically: bool
//          size:
//              originX: real
//              originY: real
//              contentX: real
//              contentY: real
//              leftMargin: real
//              rightMargin: real
//              bottomMargin: real
//              topMargin: real
//          visibleArea
//              visibleArea.heightRatio: real
//              visibleArea.widthRatio: real
//              visibleArea.xPosition: real
//              visibleArea.yPosition: real
//      signal:
//          flickEnded()
//          flickStarted()
//          movementEnded()
//          movementStarted()
//      method:
//          flick(qreal xVelocity, qreal yVelocity)
//          resizeContent(real width, real height, QPointF center)
//          returnToBounds()
//          cancelFlick()
// ScrollBar(QtQuick.Controls): Control 交互滚动条
//      property:
//          position: real
//          stepSize: real
//          size: real
//          visualPosition: real
//          visualSize: real
//          active: bool
//          horizontal: bool
//          vertical: bool
//          interactive: bool
//          minimumSize: real
//          orientation: enumeration
//              Qt.Horizontal
//              Qt.Vertical
//          policy: enumeration
//              ScrollBar.AsNeeded
//              ScrollBar.AlwaysOff
//              ScrollBar.AlwaysOn
//          pressed: bool
//          snapMode: enumeration
//              ScrollBar.NoSnap
//              ScrollBar.SnapAlways
//              ScrollBar.SnapOnRelease
//      attached property:
//          horizontal: ScrollBar
//          vertical: ScrollBar
//      method:
//          increase(): void
//          decrease(): void
// ScrollIndicator(QtQuick.Controls): Control 非交互滚动条
//      property:
//          active: bool
//          horizontal: bool
//          vertical: bool
//          position: real
//          size: real
//          visualPosition: real
//          visualSize: real
//          minimumSize: real
//          orientation: enumeration
//              Qt.Horizontal
//              Qt.Vertical
//      attached property:
//          horizontal: ScrollIndicator
//          vertical: ScrollIndicator