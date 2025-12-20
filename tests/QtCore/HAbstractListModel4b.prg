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
   LOCAL oList

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste com a classe HAbstractListModel")
   oWindow:resize(400, 600)

   oModel := HAbstractListModel():new()
   oModel:setRowCountCB({||100})
   oModel:setCB(Qt_DisplayRole, {|nRow|"Linha " + alltrim(str(nRow))})
   // checked/unchecked
   oModel:setCB(Qt_CheckStateRole, {|nRow|iif(nRow / 2 == int(nRow / 2), Qt_Checked, Qt_Unchecked)})

   oList := QListView():new(oWindow)
   oList:move(10, 10)
   oList:resize(400 - 20, 600 - 20)
   oList:setModel(oModel)

   oWindow:show()

   oApp:exec()

   // delete objects
   oModel:delete()
   oWindow:delete()
   oApp:delete()

RETURN NIL
