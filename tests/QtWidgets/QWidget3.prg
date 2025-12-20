//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow

   oApp := QApplication():new()

   WITH OBJECT oWindow := QWidget():new()
      :cWindowTitle := "Window"
      :nWidth       := 640
      :nHeight      := 480
      :lVisible     := .T.
   ENDWITH

   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
