// 
// TextEdit(QtQuick): Item
//      property:
//          text: string
//          baseUrl: url
//          preeditText: string
//          hoveredLink: string
//          length: int
//          lineCount: int
//          readOnly: bool
//          canPaste: bool
//          canRedo: bool
//          canUndo: bool
//          activeFocusOnPress: bool
//          overwriteMode: bool
//          persistentSelection: bool
//          tabStopDistance: real
//          textDocument: TextDocument
//          textFormat: enumeration
//              TextEdit.PlainText
//              TextEdit.AutoText
//              TextEdit.RichText
//              TextEdit.MarkdownText
//          textMargin: real
//          wrapMode: enumeration
//              TextEdit.NoWrap
//              TextEdit.WordWrap
//              TextEdit.WrapAnywhere
//              TextEdit.Wrap
// 
//          cursorDelegate: Component
//          cursorPosition: int
//          cursorRectangle: rectangle
//          cursorVisible: bool
// 
//          mouseSelectionMode: enumeration
//          selectByKeyboard: bool
//          selectByMouse: bool
//          selectedText: string
//          selectedTextColor: color
//          selectionColor: color
//          selectionStart: int
//          selectionEnd: int
// 
//          padding: real
//          leftPadding: real
//          rightPadding: real
//          bottomPadding: real
//          topPadding: real
// 
//          contentHeight: real
//          contentWidth: real
//          renderType: enumeration
//          inputMethodComposing: bool
//          inputMethodHints: enumeration
//      signal:
//          editingFinished()
//          linkActivated(string link)
//          linkHovered(string link)
//      method:
//          select(int start, int end)
//          selectWord()
//          selectAll()
//          deselect()
//          copy()
//          cut()
//          paste()
//          redo()
//          undo()
//          clear()
//          append(string text): void
//          insert(int position, string text)
//          getFormattedText(int start, int end): string
//          getText(int start, int end): string
//          remove(int start, int end): string
//          isRightToLeft(int start, int end)
//          linkAt(real x, real y)
//          moveCursorSelection(int position, SelectionMode mode)
//          int positionAt(int x, int y)
//          rectangle positionToRectangle(position)
// TextArea(QtQuick.Controls): TextEdit 文本编辑器
//      property:
//          placeholderText: string
//          placeholderTextColor: color
//          focusReason: enumeration
//              Qt.MouseFocusReason
//              Qt.TabFocusReason
//              Qt.BacktabFocusReason
//              Qt.ActiveWindowFocusReason
//              Qt.PopupFocusReason
//              Qt.ShortcutFocusReason
//              Qt.MenuBarFocusReason
//              Qt.OtherFocusReason
//          hovered: bool
//          hoverEnabled: bool
// 
//          leftInset: real
//          rightInset: real
//          bottomInset: real
//          topInset: real
//          background: Item
// 
//          implicitBackgroundHeight: real
//          implicitBackgroundWidth: real
//      attached property:
//          flickable: TextArea
//      signal:
//          pressed(MouseEvent event)
//          pressAndHold(MouseEvent event)
//          released(MouseEvent event)