// 
// Slider(QtQuick.Controls): Control 滑块
//      property:
//          value: real
//          from: real
//          to: real
//          stepSize: real
//          orientation: enumeration
//               Qt.Horizontal
//               Qt.Vertical
//          handle: Item
//          position: real
//          live: bool
//          horizontal: bool
//          vertical: bool
//          pressed: bool
//          snapMode: enumeration
//              Slider.NoSnap
//              Slider.SnapAlways
//              Slider.SnapOnRelease
//          touchDragThreshold: qreal
//          visualPosition: real
//          implicitHandleWidth: real
//          implicitHandleHeight: real
//      signal:
//          moved()
//      method:
//          valueAt(real position): real
//          increase(): void
//          decrease(): void