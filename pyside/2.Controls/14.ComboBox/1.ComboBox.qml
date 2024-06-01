// 
// ComboBox(QtQuick.Controls): Control
//      property:
//          count: int
//          currentIndex: int
//          currentValue: var
//          currentText: string
//          highlightedIndex: int
// 
//          model: model
//          delegate: Component
// 
//          displayText: string
//          indicator: Item
// 
//          editable: bool
//          editText: string
// 
//          flat: bool
//          down: bool
//          pressed: bool
//          selectTextByMouse: bool
//          inputMethodComposing: bool
// 
//          acceptableInput: bool
//          validator: Validator
// 
//          popup: Popup
// 
//          textRole: string
//          valueRole: string
//          inputMethodHints: flags
//          implicitContentWidthPolicy: enumeration
//          implicitIndicatorHeight: real
//          implicitIndicatorWidth: real
//      signal:
//          accepted(): void
//          activated(int index): void
//          highlighted(int index): void
//      method:
//          valueAt(int index): var
//          textAt(int index): string
//          indexOfValue(object value): int
//          find(string text, enumeration flags): int
//          incrementCurrentIndex(): void
//          decrementCurrentIndex(): void
//          selectAll(): void