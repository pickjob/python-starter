// 
// Popup(QtQuick.Controls): QtObject
//      property:
//          contentHeight: real
//          contentItem: Item
//          contentWidth: real
//          contentChildren: list<Item>
//          contentData: list<QtObject>
// 
//          x: real
//          y: real
//          z: real
//          width: real
//          height: real
//          opacity: real
// 
//          visible: bool
//          enabled: bool
//          modal: bool
//          activeFocus: bool
//          background: Item
//          focus: bool
//          dim: bool
//          mirrored: bool
//          opened: bool
//          clip: bool
// 
//          anchors.centerIn: Item
//          closePolicy: enumeration
//          palette: palette
//          parent: Item
//          scale: real
//          locale: Locale
// 
//          enter: Transition
//          exit: Transition
//          transformOrigin: enumeration
// 
//          spacing: real
//          margins: real
//          padding: real
//          leftInset: real
//          leftMargin: real
//          leftPadding: real
//          rightInset: real
//          rightMargin: real
//          rightPadding: real
//          topInset: real
//          topMargin: real
//          topPadding: real 
//          bottomInset: real
//          bottomMargin: real
//          bottomPadding: real
//          horizontalPadding: real
//          verticalPadding: real
// 
//          font: font
//          availableHeight: real
//          availableWidth: real
//          implicitHeight: real
//          implicitWidth: real
//          implicitContentHeight: real
//          implicitContentWidth: real
//          implicitBackgroundHeight: real
//          implicitBackgroundWidth: real
//      signal:
//          opened(): void
//          aboutToHide(): void
//          aboutToShow(): void
//          closed(): void
//      method:
//          open(): void
//          close(): void
//          forceActiveFocus(enumeration reason)
// Overlay(QtQuick.Controls): Item
//     attached property:
//         overlay: Overlay
//         modal: Component
//         modeless: Component
//     attached signal
//         pressed()
//         released()