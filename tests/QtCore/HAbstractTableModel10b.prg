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
   oModel:setRowCountCB({||1000000})
   // column count
   oModel:setColumnCountCB({||10000})
   // cell data
   oModel:setCB(Qt_DisplayRole, {|nRow, nCol|"Cell " + alltrim(str(nRow)) + "," + alltrim(str(nCol))})
   // cell foreground
   oModel:setCB(Qt_ForegroundRole, {|nRow, nCol|iif(nCol / 2 == int(nCol / 2), "blue", "red")})
   // cell background
   oModel:setCB(Qt_BackgroundRole, {|nRow, nCol|iif(nRow / 2 == int(nRow / 2), "cyan", "yellow")})
   // column title
   oModel:setHorizontalHeaderCB(Qt_DisplayRole, {|nCol|"Column " + strzero(nCol, 5)})
   // row title
   oModel:setVerticalHeaderCB(Qt_DisplayRole, {|nRow|"Row " + alltrim(str(nRow))})

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
