# 
# ModelIndex: 数据元信息
# ItemDataRole:
#       Qt::DisplayRole
#       Qt::DecorationRol
#       Qt::EditRole
#       Qt::ToolTipRole
#       Qt::StatusTipRole
#       Qt::WhatsThisRole
# 
#       Qt::UserRole
# QtCore.QAbstractItemModel: 所有Model基类
#       index(row: int, column: int[, parent: QModelIndex()]): QModelIndex
#       数据情况:
#           flags(index: QModelIndex): ItemFlag 数据支持情况
#           # 返回Role与qml属性映射
#           def roleNames(self): Dict[int: QByteArray]
#               default = super().roleNames()
#               default[self.REVERSED_ROLE] = QByteArray(b"reversedRole")
#               return default
#           rowCount(self, parent=QModelIndex()): int
#           columnCount(self, parent=QModelIndex()): int
#       获取数据:
#           data(self, index: QModelIndex, role=Qt.DisplayRole):: object
#       编辑数据:
#           setData(self, index: QModelIndex, value, role=Qt.EditRole): bool
#       增加、删除数据:
#           insertRows(self, row: int, count: int, parent=QModelIndex()): bool
#           insertColumns(self, column: int, count: int, parent=QModelIndex()): bool
#           removeRow(self, row: int, parent=QModelIndex()): bool
#           removeRows(self, row: int, count: int, parent=QModelIndex()): bool
#           removeColumn(self, column: int, parent=QModelIndex()): bool
#           removeColumns(self, column: int, count: int, parent=QModelIndex()): bool
# 
#           beginInsertRows(self, parent: QModelIndex, first: int, end: int) / endInsertRows()
#           beginInsertColumns(self, parent: QModelIndex, first: int, end: int) / endInsertColumns() 
# 
# 现有Model实现
#       QtCore.QAbstractItemModel
#           QtGui.QStandardItemModel
#           QtCore.QAbstractListModel
#           QtCore.QAbstractTableModel
#       常用:
#           QtCore.QStringListModel: QAbstractListModel QString列表
#       文件系统:
#           QtWidgets.QFileSystemModel: QAbstractItemModel 文件系统列表
#       SQL:
#           QtSql.QSqlQueryModel: QAbstractTableModel SQL结果集
#           QtSql.QSqlTableModel: QAbstractTableModel 数据库表