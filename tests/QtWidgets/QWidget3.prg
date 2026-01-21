//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow

   // create application
   oApp := QApplication():new()

   // create window
   WITH OBJECT oWindow := QWidget():new()
      :cWindowTitle := "Window"
      :nWidth       := 640
      :nHeight      := 480
      // show window
      :lVisible     := .T.
   ENDWITH

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
