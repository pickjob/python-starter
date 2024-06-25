# 
# python类供qml使用
#       1. *.py
#           ```
#           QML_IMPORT_NAME = "example.package.name"
#           QML_IMPORT_MAJOR_VERSION = 1
# 
#           @QmlElement
#           class Bridge(QObject):
#               def __init__(self):
#                   super().__init__()
#               # 允许Qml调用方法, 有返回值必须显式申明
#               @Slot(result=int)
#               def val(self):
#                   return val
#           ```
#       3. *.qml
#           import example.package.name
#           Bridge {
#               id： bridge
#           }