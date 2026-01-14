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
   oModel:setCB(Qt_DisplayRole, {|nRow, nCol|"Cell " + alltrim(str(nRow)) + "," + alltrim(str(nCol))})
   // cell tooltip
   oModel:setCB(Qt_ToolTipRole, {|nRow, nCol|"This is the cell " + alltrim(str(nRow)) + "," + alltrim(str(nCol))})
   // column title
   oModel:setHorizontalHeaderCB(Qt_DisplayRole, {|nCol|"Column " + strzero(nCol, 2)})
   // column tooltip
   oModel:setHorizontalHeaderCB(Qt_ToolTipRole, {|nCol|"This is the column " + strzero(nCol, 2)})
   // column size hint
   oModel:setHorizontalHeaderCB(Qt_SizeHintRole, {|nCol|QSize():new(60, 60)})
   // row title
   oModel:setVerticalHeaderCB(Qt_DisplayRole, {|nRow|"Row " + alltrim(str(nRow))})
   // row tooltip
   oModel:setVerticalHeaderCB(Qt_ToolTipRole, {|nRow|"This is the row " + alltrim(str(nRow))})
   // row size hint
   oModel:setVerticalHeaderCB(Qt_SizeHintRole, {|nRow|QSize():new(90, 30)})

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
