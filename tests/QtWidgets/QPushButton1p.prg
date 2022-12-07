/*

  Qt5xHb Project - Test Program

  Copyright (C) 2022 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-cpp11

*/

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
