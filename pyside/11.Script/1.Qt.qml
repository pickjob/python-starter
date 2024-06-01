// 
// Qt(QtQml)
//      property:
//          application: object
//              application.active
//              application.state
//              application.font
//              application.layoutDirection
//          platform: object
//              platform.os: linux, windows
//          styleHints: object
//      method:
//          color:
//              rgba(real red, real green, real blue, real alpha): color
//              hsva(real hue, real saturation, real value, real alpha): color
//              darker(color baseColor, real factor): color
//              lighter(color baseColor, real factor): color
//              tint(color baseColor, color tintColor): color
//          datetime:
//              formatTime(datetime date, variant format): string
//              formatDate(datetime date, variant format): string
//              formatDateTime(datetime dateTime, variant format): string
//                  format:
//                      yyyy-MM-dd hh:mm:ss
//          dynamic object creation:
//              createComponent(url url, enumeration mode, QtObject parent): Component
//              createComponent(string moduleUri, string typeName, enumeration mode, QtObject parent): Component
//                  mode: Component.PreferSynchronous
//              createQmlObject(string qml, object parent, string filepath): object
//          utils
//              locale(name): locale
//              binding(function): 绑定变量
//              callLater(function, argument1, argument2, ...)
//              md5(data): string md5后hex值
//              quit(): 方法退出
//             exit(int retCode): 退出程序
// 
/**
 * 动态创建对象
 *      Qt.createComponent() + Component.createObject()
 *      Qt.createQmlObject()
 * 
 * var component;
 * function createImageObject() {
 *      component = Qt.createComponent("dynamic-image.qml");
 *      if (component.status === Component.Ready || component.status === Component.Error) {
 *          finishCreation();
 *      } else {
 *          component.statusChanged.connect(finishCreation);
 *      }
 * }
 * function finishCreation() {
 *      if (component.status === Component.Ready) {
 *          var image = component.createObject(root, {"x": 100, "y": 100});
 *          if (image === null) {
 *              console.log("Error creating image");
 *          }
 *      } else if (component.status === Component.Error) {
 *          console.log("Error loading component:", component.errorString());
 *      }
 * }
 */