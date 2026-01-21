//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   // create application
   oApp := QApplication():new()

   // create window
   WITH OBJECT oWindow := QWidget():new()

      WITH OBJECT oButton := QPushButton():new(oWindow)
         :cText     := "Clique aqui"
         :nX        := 20
         :nY        := 20
         :bClicked  := {||qout("clicked")}
         :bPressed  := {||qout("pressed")}
         :bReleased := {||qout("released")}
      ENDWITH

      // show window
      :lVisible := .T.

   ENDWITH

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
