// 
// StackView(QtQuick.Controls): Control
//      property:
//          currentItem: Item
//          initialItem: var
//          depth: int
//          busy: bool
//          empty: bool
// 
//          pushEnter: Transition
//          pushExit: Transition
//          popEnter: Transition
//          popExit: Transition
//          replaceEnter: Transition
//          replaceExit: Transition
//      attached property:
//          StackView.index: int
//          StackView.status: enumeration
//          StackView.visible: bool
//          StackView.view: StackView
//      attached signal:
//          StackView.activated()
//          StackView.activating()
//          StackView.deactivated()
//          StackView.deactivating()
//          StackView.removed()
//      method:
//          push(item, properties, operation): Item
//          pop(item, operation): Item
//          find(callback, behavior): Item
//          get(index, behavior): Item
//          replace(target, item, properties, operation): Item
//          clear(transition): void