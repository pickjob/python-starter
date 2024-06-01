// 
// GridView(QtQuick): Flickable
//      property:
//          currentIndex: int
//          currentItem: Item
//          header: Component
//          headerItem: Item
//          footer: Component
//          footerItem: Item
//          model: model
//          delegate: Component
//          count: int
//          cacheBuffer: int
// 
//          flow: enumeration
//              GidView.FlowLeftToRight
//              GridView.FlowTopToBottom
// 
//          cellWidth: real
//          cellHeight: real
//          displayMarginBeginning: int
//          displayMarginEnd: int
//          keyNavigationEnabled: bool
//          keyNavigationWraps: bool
//          snapMode: enumeration
//              GridView.NoSnap
//              GridView.SnapToRow
//              GridView.SnapOneRow
//          动画:
//              add: Transition
//              addDisplaced: Transition
//              populate: Transition
//              displaced: Transition
//              move: Transition
//              moveDisplaced: Transition
//              remove: Transition
//              removeDisplaced: Transition
//          方向:
//              effectiveLayoutDirection: enumeration
//              layoutDirection: enumeration
//              verticalLayoutDirection: enumeration
//          highlight:
//              highlight: Component
//              highlightItem: Item
//              highlightRangeMode: enumeration
//              highlightFollowsCurrentItem: bool
//              highlightMoveDuration: int
//              preferredHighlightBegin: real
//              preferredHighlightEnd: real
//       attached property:
//           view: GridView
//           isCurrentItem: bool
//           delayRemove: bool
//       attached signal:
//           add()
//           remove()
//       method:
//           forceLayout()
//           indexAt(real x, real y): int
//           itemAt(real x, real y): Item
//           itemAtIndex(int index): Item
//           moveCurrentIndexDown()
//           moveCurrentIndexLeft()
//           moveCurrentIndexRight()
//           moveCurrentIndexUp()
//           positionViewAtBeginning()
//           positionViewAtEnd()
//           positionViewAtIndex(int index, PositionMode mode)