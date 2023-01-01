/*

  Qt5xHb Project - Test Program

  Copyright (C) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v2

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3

   oApp := QApplication():new()

   WITH OBJECT oWindow := QWidget():new()

      :nWidth  := 320
      :nHeight := 240

      WITH OBJECT oButton1 := QPushButton():new(oWindow)
         :cText     := "PushButton 1"
         :nX        := 20
         :nY        := 20
         :bClicked  := {||qout("clicked-1")}
         :bPressed  := {||qout("pressed-1")}
         :bReleased := {||qout("released-1")}
      ENDWITH

      WITH OBJECT oButton2 := QPushButton():new(oWindow)
         :cText     := "PushButton 2"
         :nX        := 20
         :nY        := 70
         :bClicked  := {||qout("clicked-2")}
         :bPressed  := {||qout("pressed-2")}
         :bReleased := {||qout("released-2")}
      ENDWITH

      WITH OBJECT oButton3 := QPushButton():new(oWindow)
         :cText     := "PushButton 3"
         :nX        := 20
         :nY        := 120
         :bClicked  := {||qout("clicked-3")}
         :bPressed  := {||qout("pressed-3")}
         :bReleased := {||qout("released-3")}
      ENDWITH

      :lVisible := .T.

   ENDWITH

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
