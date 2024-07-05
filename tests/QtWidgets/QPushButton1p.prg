//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   WITH OBJECT oWindow := QWidget():new()

      WITH OBJECT oButton := QPushButton():new(oWindow)
         :cText     := "Clique aqui"
         :nX        := 20
         :nY        := 20
         :bClicked  := {||qout("clicked")}
         :bPressed  := {||qout("pressed")}
         :bReleased := {||qout("released")}
      ENDWITH

      :lVisible := .T.

   ENDWITH

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
