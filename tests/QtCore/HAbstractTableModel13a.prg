//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   oModel := HAbstractTableModel():new()
   // total de linhas
   oModel:setRowCountCB({||100})
   // total de colunas
   oModel:setColumnCountCB({||10})
   // conteúdo da célula
   oModel:setDisplayRoleCB({|nRow, nCol|"Célula " + alltrim(str(nRow)) + "," + alltrim(str(nCol))})
   // checked/unchecked
   oModel:setCheckStateRoleCB({|nRow, nCol|iif(nCol == 0, Qt_Checked, NIL)})

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)

   oWindow:show()

   oApp:exec()

   // delete objects
   oModel:delete()
   oWindow:delete()
   oApp:delete()

RETURN NIL
