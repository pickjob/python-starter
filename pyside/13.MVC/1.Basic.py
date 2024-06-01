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
#           roleNames(): Dict[int: QByteArray] 返回Role与qml属性映射
#           rowCount([parent: QModelIndex()]): int 数据函数
#           columnCount([parent: QModelIndex()]): int 数据列数
#       获取数据:
#           data(index[, role: Qt.DisplayRole]): object
#           headerData(section: int, orientation: Orientation[, role: Qt.DisplayRole])：object
#           itemData(index: QModelIndex): dictionary
#       编辑数据:
#           setData(index: QModelIndex, value[, role: Qt.EditRole]): bool
#           setHeaderData(section: int, orientation: Orientation, value[, role: Qt.EditRole]): bool
#       增加、删除数据:
#           insertRows(row: int, count[, parent: QModelIndex()]): bool
#           insertColumns(column: int, count[, parent: QModelIndex()]): bool
#           removeRow(row[, parent: QModelIndex()]): bool
#           removeRows(row: int, count[, parent: QModelIndex()]): bool
#           removeColumn(column[, parent: QModelIndex()]): bool
#           removeColumns(column: int, count[, parent: QModelIndex()]): bool
# 
#           beginInsertRows(parent: QModelIndex, first: int, end: int) / endInsertRows()
#           beginInsertColumns(parent: QModelIndex, first: int, end: int) / endInsertColumns() 
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