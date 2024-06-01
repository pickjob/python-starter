// 
// RangeSlider(QtQuick.Controls): Control 区间滑块
//      property:
//          first
//              first.handle: Item
//              first.hovered: bool
//              first.implicitHandleHeight: real
//              first.implicitHandleWidth: real
//              first.position: real
//              first.pressed: bool
//              first.value: real
//              first.visualPosition: real
//          second:
//              second.handle: Item
//              second.hovered: bool
//              second.implicitHandleHeight: real
//              second.implicitHandleWidth: real
//              second.position: real
//              second.pressed: bool
//              second.value: real
//              second.visualPosition: real
//          from: real
//          to: real
//          horizontal: bool
//          vertical: bool
//          live: bool
//          orientation: enumeration
//              Qt.Horizontal
//              Qt.Vertical
//          snapMode: enumeration
//              RangeSlider.NoSnap
//              RangeSlider.SnapAlways
//              RangeSlider.SnapOnRelease
//          stepSize: real
//          touchDragThreshold: qreal
//      signal
//          first.moved()
//          second.moved()
//      method:
//          valueAt(real position): real
//          setValues(real firstValue, real secondValue)
//          first.increase()
//          first.decrease()
//          second.increase()
//          second.decrease()