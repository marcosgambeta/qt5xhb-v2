/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb-cpp11

*/

#include "qt5xhb.ch"

#define NUMR_ROWS 100
#define NUMR_COLS 10

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL nRow
   LOCAL nCol
   LOCAL aData

   aData := array(NUMR_ROWS,10)
   FOR nRow := 1 TO NUMR_ROWS
      FOR nCol := 1 TO NUMR_COLS
         aData[ nRow, nCol ] := "Célula "+alltrim(str(nRow))+","+alltrim(str(nCol))
      NEXT nCol
   NEXT nRow

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800,600)

   oModel := HAbstractTableModel():new()
   oModel:setRowCountCB({||NUMR_ROWS}) // total de linhas
   oModel:setColumnCountCB({||NUMR_COLS}) // total de colunas
   oModel:setDisplayRoleCB({|nRow,nCol|aData[nRow+1,nCol+1]}) // conteúdo da célula
   oModel:setEditRoleCB({|nRow,nCol|aData[nRow+1,nCol+1]}) // conteúdo para edição da célula
   oModel:setFlagsCB({||Qt_ItemIsSelectable + Qt_ItemIsEditable + Qt_ItemIsEnabled}) // flags
   oModel:setSetDataCB({|nRow,nCol,oVariant|aData[nRow+1,nCol+1]:=oVariant:toString(),.T.}) // grava conteúdo da célula se não for vazio

   oView := QTableView():new(oWindow)
   oView:move(10,10)
   oView:resize(800-20,600-20)
   oView:setModel(oModel)

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN
