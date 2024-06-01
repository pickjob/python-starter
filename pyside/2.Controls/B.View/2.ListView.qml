// 
// ListView(QtQuick): Flickable
//      property:
//          currentIndex: int
//          currentItem: Item
//          currentSection: string
//          count: int
//  
//          model: model
//          delegate: Component
//  
//          cacheBuffer: int
//          reuseItems: bool
//          header: Component
//          footer: Component
//          headerItem: Item
//          footerItem: Item
//          headerPositioning: enumeration
//              ListView.InlineHeader
//              ListView.OverlayHeader
//              ListView.PullBackHeader
//          footerPositioning: enumeration
//              ListView.InlineFooter
//              ListView.OverlayFooter
//              ListView.PullBackFooter
//          方向:
//              orientation: enumeration
//                  Qt.Horizontal
//                  Qt.Vertical
//              layoutDirection: enumeration
//                  Qt.LeftToRight
//                  Qt.RightToLeft
//              verticalLayoutDirection: enumeration
//                  ListView.TopToBottom
//                  ListView.BottomToTop
//              effectiveLayoutDirection: enumeration
//          transition:
//              add: Transition
//              addDisplaced: Transition
//              move: Transition
//              moveDisplaced: Transition
//              populate: Transition
//              displaced: Transition
//              remove: Transition
//              removeDisplaced: Transition
//          display:
//              displayMarginBeginning: int
//              displayMarginEnd: int
//          highlight:
//              highlight: Component
//              highlightItem: Item
//              highlightFollowsCurrentItem: bool
//              highlightRangeMode: enumeration
//                  ListView.ApplyRange
//                  ListView.StrictlyEnforceRange
//                  ListView.NoHighlightRange
//              preferredHighlightBegin: real
//              preferredHighlightEnd: real
//  
//              highlightMoveDuration: int
//              highlightMoveVelocity: real
//              highlightResizeDuration: int
//              highlightResizeVelocity: real
//          keyNavigationEnabled: bool
//          keyNavigationWraps: bool
//          section
//              section.criteria: enumeration
//              section.delegate: Component
//              section.labelPositioning: enumeration
//              section.property: string
//          snapMode: enumeration
//          spacing: real
//      attached property:
//          view: ListView
//          section: string
//          previousSection: string
//          nextSection: string
//          isCurrentItem: bool
//          delayRemove: bool
//      attached signal:
//          add()
//          pooled()
//          reused()
//          remove()
//      method:
//          indexAt(real x, real y): int
//          itemAt(real x, real y): Item
//          itemAtIndex(int index): Item
//          incrementCurrentIndex()
//          decrementCurrentIndex()
//          forceLayout()
//          positionViewAtBeginning()
//          positionViewAtEnd()
//          positionViewAtIndex(int index, PositionMode mode)
// ListModel(QtQml.Models):
//      property:
//          count: int
//          dynamicRoles: bool
//      method:
//          set(int index, jsobject dict)
//          setProperty(int index, string property, variant value)
//          get(int index): object
//          append(jsobject dict)
//          insert(int index, jsobject dict)
//          move(int from, int to, int n)
//          remove(int index, int count)
//          sync()
//          clear()