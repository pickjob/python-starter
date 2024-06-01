// 
// Window(QtQuick): QQuickWindow
//      property:
//          title: string
//          visible: bool **默认为false**
//          active: bool
//          contentItem: Item
//          contentOrientation: Qt::ScreenOrientation
//          data: list<QtObject>
//          opacity: real
//          窗口管理:
//              transientParent: QWindow
//              modality: Qt::WindowModality
//                  Qt.NonModal(the default)
//                  Qt.WindowModal
//                  Qt.ApplicationModal
//              flags: Qt::WindowFlags
//          size:
//              x: int
//              y: int
//              width: int
//              height: int
//              maximumWidth: int
//              minimumWidth: int
//              minimumHeight: int
//              maximumHeight: int
//      attached property:
//          active: bool
//          activeFocusItem: Item
//          contentItem: Item
//          visibility: QWindow::Visibility
//          window: Window
//      signal:
//          afterAnimating()
//          frameSwapped()
//          sceneGraphError(SceneGraphError error, QString message)
//          closing(CloseEvent close)
//      method:
//          alert(int msec)
//          lower()
//          raise()
//          requestActivate()
//          show()
//          showNormal()
//          showFullScreen()
//          showMaximized()
//          showMinimized()
//          hide()
//          close()