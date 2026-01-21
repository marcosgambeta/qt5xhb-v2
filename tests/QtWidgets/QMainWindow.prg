//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   lOCAL oApp
   LOCAL oWindow

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QMainWindow():new()

   oWindow:setWindowTitle("Teste")

   oWindow:resize(640, 480)

   // show window
   oWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
