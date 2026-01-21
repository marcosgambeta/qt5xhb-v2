//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   lOCAL oApp
   LOCAL oMainWindow
   LOCAL oDockWidget

   // create application
   oApp := QApplication():new()

   // create window
   oMainWindow := QMainWindow():new()

   oDockWidget := QDockWidget():new("Teste", oMainWindow)

   // show window
   oMainWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oMainWindow:delete()
   oApp:delete()

RETURN NIL
