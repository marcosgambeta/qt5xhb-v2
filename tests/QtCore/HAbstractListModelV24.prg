//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with the HAbstractListModelV2 class")
   oWindow:resize(800, 600)

   // create model
   oModel := myModel():new()

   // create view
   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oModel:delete()
   oWindow:delete()
   oApp:delete()

RETURN NIL

#include <hbclass.ch>

CLASS myModel INHERIT HAbstractListModelV2

   METHOD new
   METHOD rowCount
   METHOD data
   METHOD headerData

END CLASS

METHOD new(...) CLASS myModel

   ::super:new(...)

   ::setRowCountCB({|...|::rowCount(...)})
   ::setDataCB({|...|::data(...)})
   ::setHeaderDataCB({|...|::headerData(...)})

RETURN self

METHOD rowCount() CLASS myModel
RETURN 100

METHOD data(oIndex, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL nRow := oIndex:row()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole
         oVariant := QVariant():new("Cell " + alltrim(str(nRow)))
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData(nSection, nOrientation, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Column " + alltrim(str(nSection)))
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Row " + alltrim(str(nSection)))
   ENDIF

RETURN oVariant
