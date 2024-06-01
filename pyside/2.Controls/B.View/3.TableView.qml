// 
// TableView(QtQuick): Flickable 表视图
//      property:
//          currentRow: int
//          currentColumn: int
//          rows: int
//          columns: int
//          topRow: int
//          bottomRow: int
//          leftColumn: int
//          rightColumn: int
//          model: model
//          delegate: Component
//          alternatingRows: bool
//          间隙:
//              rowSpacing: real
//              columnSpacing: real
//          animate: bool
//          contentHeight: real
//          contentWidth: real
//          editTriggers: enumeration
//          keyNavigationEnabled: bool
//          pointerNavigationEnabled: bool
//          resizableRows: bool
//          resizableColumns: bool
//          reuseItems: bool
//          rowHeightProvider: var
//          columnWidthProvider: var
//          selectionBehavior: enumeration
//          selectionMode: enumeration
//          selectionModel: ItemSelectionModel
//          syncDirection: Qt::Orientations
//          syncView: TableView
//      attached property:
//          editDelegate: Component
//          view: TableView
//      signal:
//          layoutChanged()
//      attached signal:
//          pooled()
//          reused()
//          commit()
//      method:
//          itemAtCell(point cell): Item
//          itemAtIndex(QModelIndex index): Item
//          index(int row, int column): QModelIndex
//          modelIndex(point cell): QModelIndex
//          rowAtIndex(QModelIndex modelIndex): int
//          columnAtIndex(QModelIndex modelIndex): int
//          cellAtIndex(QModelIndex modelIndex): point
//          cellAtPosition(point position, bool includeSpacing): Point
//          cellAtPosition(real x, real y, bool includeSpacing): Point
//          clearRowHeights()
//          clearColumnWidths()
//          closeEditor()
//          edit(QModelIndex modelIndex)
//          rowHeight(int row): real
//          columnWidth(int column): real
//          explicitColumnWidth(int column): qreal
//          explicitRowHeight(int row): qreal
//          forceLayout()
//          isRowLoaded(int row): bool
//          isColumnLoaded(int column): bool
//          implicitColumnWidth(int column): real
//          implicitRowHeight(int row): real
//          positionViewAtCell(point cell, PositionMode mode, point offset, rect subRect)
//          positionViewAtColumn(int column, PositionMode mode, real offset, rect subRect)
//          positionViewAtIndex(QModelIndex index, PositionMode mode, point offset, rect subRect)
//          positionViewAtRow(int row, PositionMode mode, real offset, rect subRect)
//          setColumnWidth(int column, real size)
//          setRowHeight(int row, real size)