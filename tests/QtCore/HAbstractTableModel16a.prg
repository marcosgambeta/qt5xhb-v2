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
   // conte�do da c�lula
   oModel:setDisplayRoleCB({|nRow, nCol|"C�lula " + AllTrim(Str(nRow)) + "," + AllTrim(Str(nCol))})
   // tooltip da c�lula
   oModel:setToolTipRoleCB({|nRow, nCol|"Esta � a c�lula " + AllTrim(Str(nRow)) + "," + AllTrim(Str(nCol))})
   // t�tulos das colunas
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|"Coluna " + StrZero(nCol, 2)})
   // tooltips das colunas
   oModel:setHorizontalHeaderToolTipRoleCB({|nCol|"Esta � a coluna " + StrZero(nCol, 2)})
   // sizehints das colunas
   oModel:setHorizontalHeaderSizeHintRoleCB({|nCol|QSize():new(60, 60)})
   // t�tulos das linhas
   oModel:setVerticalHeaderDisplayRoleCB({|nRow|"Linha " + AllTrim(Str(nRow))})
   // tooltips das linhas
   oModel:setVerticalHeaderToolTipRoleCB({|nRow|"Esta � a linha " + AllTrim(Str(nRow))})
   // sizehints das linhas
   oModel:setVerticalHeaderSizeHintRoleCB({|nRow|QSize():new(90, 30)})

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL
