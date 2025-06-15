//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2

   oApp := QApplication():new()

   WITH OBJECT oWindow := QWidget():new()

      :nWidth  := 320
      :nHeight := 240

      WITH OBJECT oButton1 := QPushButton():new(oWindow)
         :cText     := "PushButton 1"
         :nX        := 20
         :nY        := 20
         :bClicked  := {||QOut("clicked-1")}
         :bPressed  := {||QOut("pressed-1")}
         :bReleased := {||QOut("released-1")}
      ENDWITH

      WITH OBJECT oButton2 := QPushButton():new(oWindow)
         :cText     := "PushButton 2"
         :nX        := 20
         :nY        := 70
         :bClicked  := {||QOut("clicked-2")}
         :bPressed  := {||QOut("pressed-2")}
         :bReleased := {||QOut("released-2")}
      ENDWITH

      :lVisible := .T.

   ENDWITH

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL
