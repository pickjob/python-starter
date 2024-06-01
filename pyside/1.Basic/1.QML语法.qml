// 
// 基本语法
//      pragma
//          pragma Singleton
//      import
//          import <ModuleIdentifier> [<Version.Number>] [as <Qualifier>]
//          import "<DirectoryPath>" [as <Qualifier>]
//          import "<JavaScriptFile>" as <Identifier>
//              搜索路径:
//                  1. 当前文件目录
//                  2. QLibraryInfo::QmlImportsPath(QQmlEngine::addImportPath)
//                  3. QML_IMPORT_PATH 环境变量
//      Object Declarations
//          QMLType {
//              id 
//              property declarations
//                  [default] [required] [readonly] property <propertyType> <propertyName>
//                  [default] property <propertyType> <propertyName>[: <value>]
//                  [default] property alias <name>: <alias reference>
//              signal declarations
//                  signal <signalName>[([<parameterName>: <parameterType>[, ...]])]
//              signal handler
//              javaScript function
//                  function <functionName>([<parameterName>[: <parameterType>][, ...]]) [: <returnType>] { <body> }
//              object properties
//              child objects
//              states
//              transitions
//          }
//      内部类:
//          component <component name> : BaseType {
//              // declare properties and bindings here
//          }
//      脚本:
//          ECMAScript 7th
// 绑定: 单向绑定
//      property : value : 属性绑定, 生命周期绑定
//      脚本内绑定: 一次性绑定
//      Binding 类: 生命周期