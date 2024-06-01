// 
// TextInput(QtQuick): Item
//      property:
//          text: string
//          displayText: string
//          length: int
//          maximumLength: int
//          passwordCharacter: string
//          passwordMaskDelay: int
//          canPaste: bool
//          canRedo: bool
//          canUndo: bool
//          persistentSelection: bool
// 
//          wrapMode: enumeration
//              TextInput.NoWrap
//              TextInput.WordWrap
//              TextInput.WrapAnywhere
//              TextInput.Wrap
// 
//          echoMode: enumeration
//              TextInput.Normal
//              TextInput.Password
//              TextInput.NoEcho
//              TextInput.PasswordEchoOnEdit
// 
//          cursorDelegate: Component
//          cursorPosition: int
//          cursorRectangle: rectangle
// 
//          selectByMouse: bool
//          selectedText: string
//          selectedTextColor: color
//          mouseSelectionMode: enumeration
//              TextInput.SelectCharacters
//              TextInput.SelectWords
//          selectionColor: color
//          selectionStart: int
//          selectionEnd: int
// 
//          padding: real
//          leftPadding: real
//          rightPadding: real
//          bottomPadding
//          topPadding: real
//      signal:
//          accepted()
//          editingFinished()
//          textEdited()
//      method:
//          select(int start, int end)
//          selectWord()
//          selectAll()
//          deselect()
//          moveCursorSelection(int position, SelectionMode mode)
//          copy()
//          cut()
//          paste()
//          redo()
//          undo()
//          clear()
//          ensureVisible(int position)
//          getText(int start, int end): string
//          insert(int position, string text)
//          remove(int start, int end)
//          isRightToLeft(int start, int end)
//          positionAt(real x, real y, CursorPosition position): int
//          positionToRectangle(int pos): rect
// TextField(QtQuick.Controls): TextInput 输入框
//      property:
//          placeholderText: string
//          placeholderTextColor: color
//          hovered: bool
//          hoverEnabled: bool
//          focusReason: enumeration
//              Qt.MouseFocusReason
//              Qt.TabFocusReason
//              Qt.BacktabFocusReason
//              Qt.ActiveWindowFocusReason
//              Qt.PopupFocusReason
//              Qt.ShortcutFocusReason
//              Qt.MenuBarFocusReason
//              Qt.OtherFocusReason
//          background: Item
// 
//          leftInset: real
//          rightInset: real
//          bottomInset: real
//          topInset: real
// 
//          implicitBackgroundHeight: real
//          implicitBackgroundWidth: real
//      signal:
//          pressAndHold(MouseEvent event)
//          pressed(MouseEvent event)
//          released(MouseEvent even