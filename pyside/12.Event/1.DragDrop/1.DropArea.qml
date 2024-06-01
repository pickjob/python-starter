// 
// DropArea(QtQuick): Item
//      property:
//          keys: stringlist
//          drag.source: QtObject
//          drag
//              drag.x: qreal
//              drag.y: qreal
//          containsDrag: bool
//      signal:
//          dropped(DragEvent drop)
//          entered(DragEvent drag)
//          positionChanged(DragEvent drag)
//          exited()
// Drag(QtQuick):
//      attached property:
//          source: Object
//          target: Object
//          hotSpot: QPointF
//          imageSource: QUrl
//          keys: stringlist
//          mimeData: var
//          proposedAction: enumeration
//          supportedActions: flags
//          active: bool
//      attached signal:
//          dragStarted()
//          dragFinished(DropAction dropAction)
//      attach method:
//          cancel():  void
//          drop(): enumeration 
//          start(flags supportedActions): void
//          startDrag(flags supportedActions): void