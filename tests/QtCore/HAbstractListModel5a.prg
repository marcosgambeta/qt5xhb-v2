//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

#define NUMR_ROWS 100

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL nRow
   LOCAL aData

   aData := array(NUMR_ROWS)
   FOR nRow := 1 TO NUMR_ROWS
      aData[nRow] := {"Row " + alltrim(str(nRow)), Qt_Checked}
   NEXT nRow

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with the HAbstractListModel class")
   oWindow:resize(800, 600)

   // create model
   oModel := HAbstractListModel():new()
   // row count
   oModel:setRowCountCB({||NUMR_ROWS})
   // row data
   oModel:setDisplayRoleCB({|nRow|aData[nRow + 1][1]})
   // row edit
   oModel:setEditRoleCB({|nRow|aData[nRow + 1][1]})
   // checked/unchecked
   oModel:setCheckStateRoleCB({|nRow|aData[nRow + 1][2]})
   // flags
   oModel:setFlagsCB({||Qt_ItemIsSelectable + Qt_ItemIsEditable + Qt_ItemIsEnabled + Qt_ItemIsUserCheckable})
   oModel:setSetDataCB({|nRow, oVariant, nRole|
      IF nRole == Qt_EditRole
         aData[nRow + 1, 1] := oVariant:toString()
         RETURN .T.
      ENDIF
      IF nRole == Qt_CheckStateRole
         aData[nRow + 1, 2] := oVariant:toInt()
         RETURN .T.
      ENDIF
      }) // save row data if not empty

   // create view
   oView := QListView():new(oWindow)
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
