//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

#define NUMR_ROWS 100
#define NUMR_COLS 10

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL nRow
   LOCAL nCol
   LOCAL aData

   aData := Array(NUMR_ROWS, 10)
   FOR nRow := 1 TO NUMR_ROWS
      FOR nCol := 1 TO NUMR_COLS
         aData[nRow, nCol] := "Cell " + alltrim(str(nRow)) + "," + alltrim(str(nCol))
      NEXT nCol
   NEXT nRow

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with the HAbstractTableModel class")
   oWindow:resize(800, 600)

   // create model
   oModel := HAbstractTableModel():new()
   // row count
   oModel:setRowCountCB({||NUMR_ROWS})
   // column count
   oModel:setColumnCountCB({||NUMR_COLS})
   // cell data
   oModel:setCB(Qt_DisplayRole, {|nRow, nCol|aData[nRow + 1, nCol + 1]})
   // cell edit
   oModel:setCB(Qt_EditRole, {|nRow, nCol|aData[nRow + 1, nCol + 1]})
   // flags
   oModel:setFlagsCB({||Qt_ItemIsSelectable + Qt_ItemIsEditable + Qt_ItemIsEnabled})
   // save cell data if not empty
   oModel:setSetDataCB({|nRow, nCol, oVariant|aData[nRow + 1, nCol + 1] := oVariant:toString(), .T.})

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
