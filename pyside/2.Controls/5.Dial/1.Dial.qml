// 
// Dial(QtQuick.Controls): Control 表盘
//      property:
//          value: real
//          from: real
//          to: real
//          stepSize: real
//          handle: Item
//          angle: real
//          endAngle: real
//          inputMode: enumeration
//              Dial.Circular
//              Dial.Horizontal
//              Dial.Vertical
//          live: bool
//          position: real
//          pressed: bool
//          snapMode: enumeration
//              Dial.NoSnap
//              Dial.SnapAlways
//              Dial.SnapOnRelease
//          startAngle: real
//          wrap: bool
//      signal:
//          moved()
//          wrapped(Dial.WrapDirection direction)
//      method:
//          increase(): void
//          decrease(): void