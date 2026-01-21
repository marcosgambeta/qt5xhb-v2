//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDateTimeEdit

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oDateTimeEdit := QDateTimeEdit():new(oWindow)
   oDateTimeEdit:move(20, 20)
   oDateTimeEdit:setTooltip("Eu sou um QDateTimeEdit")

   // show window
   oWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
