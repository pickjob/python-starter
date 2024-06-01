// 
// Dialog(QtQuick.Controls): Popup
//      property:
//          title: string
//          header: Item
//          footer: Item
//          standardButtons: enumeration
//              Dialog.Ok
//              Dialog.Yes
//              Dialog.No
//              Dialog.Cancel
//              Dialog.Close
//              Dialog.Apply
//          result: int
//              Dialog.Accepted
//              Dialog.Rejected
//      signal:
//          accepted()
//          rejected()
//          reset()
//          applied()
//          discarded()
//          helpRequested()
//      method:
//          accept(): void
//          done(int result): void
//          reject(): void
//          standardButton(StandardButton button): AbstractButton