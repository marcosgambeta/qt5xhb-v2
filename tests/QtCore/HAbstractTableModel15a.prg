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
   oWindow:setWindowTitle("Test with the HAbstractTableModel class")
   oWindow:resize(800, 600)

   // create model
   oModel := HAbstractTableModel():new()
   // row count
   oModel:setRowCountCB({||100})
   // column count
   oModel:setColumnCountCB({||10})
   // cell data
   oModel:setDisplayRoleCB({|nRow, nCol|"Cell " + alltrim(str(nRow)) + "," + alltrim(str(nCol))})
   // cell tooltip
   oModel:setToolTipRoleCB({|nRow, nCol|"This is the cell " + alltrim(str(nRow)) + "," + alltrim(str(nCol))})
   // column title
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|"Column " + strzero(nCol, 2)})
   // column tooltip
   oModel:setHorizontalHeaderToolTipRoleCB({|nCol|"This is the column " + strzero(nCol, 2)})
   // row title
   oModel:setVerticalHeaderDisplayRoleCB({|nRow|"Row " + alltrim(str(nRow))})
   // row tooltip
   oModel:setVerticalHeaderToolTipRoleCB({|nRow|"This is the row " + alltrim(str(nRow))})

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
