//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oStatusBar

   // create application
   oApp := QApplication():new()

   // create window
   oMainWindow := QMainWindow():new()

   oStatusBar := oMainWindow:statusBar()

   oStatusBar:showMessage("teste")

   // show window
   oMainWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oMainWindow:delete()
   oApp:delete()

RETURN NIL
