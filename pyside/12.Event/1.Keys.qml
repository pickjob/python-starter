// 
// Keys: (QtQuick)
//      property:
//          enabled: bool
//          priority: enumeration
//              Keys.BeforeItem
//              Keys.AfterItem
//          forwardTo: list<Item>
//      signal:
//          pressed(KeyEvent event)
//          noPressed(KeyEvent event)
//          cancelPressed(KeyEvent event)
//          released(KeyEvent event)
//          leftPressed(KeyEvent event)
//          rightPressed(KeyEvent event)
//          upPressed(KeyEvent event)
//          downPressed(KeyEvent event)
//          yesPressed(KeyEvent event)
//          enterPressed(KeyEvent event)
//          backPressed(KeyEvent event)
//          tabPressed(KeyEvent event)
//          backtabPressed(KeyEvent event)
//          volumeUpPressed(KeyEvent event)
//          volumeDownPressed(KeyEvent event)
//          spacePressed(KeyEvent event)
//          deletePressed(KeyEvent event)
//          callPressed(KeyEvent event)
//          escapePressed(KeyEvent event)
//          context1Pressed(KeyEvent event)
//          context2Pressed(KeyEvent event)
//          context3Pressed(KeyEvent event)
//          context4Pressed(KeyEvent event)
//          digit0Pressed(KeyEvent event)
//          digit1Pressed(KeyEvent event)
//          digit2Pressed(KeyEvent event)
//          digit3Pressed(KeyEvent event)
//          digit4Pressed(KeyEvent event)
//          digit5Pressed(KeyEvent event)
//          digit6Pressed(KeyEvent event)
//          digit7Pressed(KeyEvent event)
//          digit8Pressed(KeyEvent event)
//          digit9Pressed(KeyEvent event)
//          flipPressed(KeyEvent event)
//          hangupPressed(KeyEvent event)
//          menuPressed(KeyEvent event)
//          returnPressed(KeyEvent event)
//          selectPressed(KeyEvent event)
//          shortcutOverride(KeyEvent event)
//          asteriskPressed(KeyEvent event)
// KeyEvent(QtQuick):
//      property:
//          key: int
//          text: string
//          modifiers: int
//              Qt.NoModifier
//              Qt.ControlModifier
//              Qt.ShiftModifier
//              Qt.AltModifier
//              Qt.MetaModifier
//          count: int
//          accepted: bool
//          isAutoRepeat: bool
//          nativeScanCode: quint32
//      method:
//          matches(StandardKey matchKey): bool