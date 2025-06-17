//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   WITH OBJECT oWindow := QWidget():new()

      WITH OBJECT oButton := QPushButton():new(oWindow)
         :cText     := "Clique aqui"
         :nX        := 20
         :nY        := 20
         :bClicked  := {||QOut("clicked")}
         :bPressed  := {||QOut("pressed")}
         :bReleased := {||QOut("released")}
      ENDWITH

      :lVisible := .T.

   ENDWITH

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL
