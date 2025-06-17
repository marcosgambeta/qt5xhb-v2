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
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3

   oApp := QApplication():new()

   WITH OBJECT oWindow := QWidget():new()

      :nWidth  := 320
      :nHeight := 240

      WITH OBJECT oButton1 := QPushButton():new(oWindow)
         :oIcon     := QIcon():new("../images/cut.png")
         :cText     := "PushButton 1"
         :nX        := 20
         :nY        := 20
         :bClicked  := {||QOut("clicked-1")}
         :bPressed  := {||QOut("pressed-1")}
         :bReleased := {||QOut("released-1")}
      ENDWITH

      WITH OBJECT oButton2 := QPushButton():new(oWindow)
         :oIcon     := "../images/copy.png"
         :cText     := "PushButton 2"
         :nX        := 20
         :nY        := 70
         :bClicked  := {||QOut("clicked-2")}
         :bPressed  := {||QOut("pressed-2")}
         :bReleased := {||QOut("released-2")}
      ENDWITH

      WITH OBJECT oButton3 := QPushButton():new(oWindow)
         :oIcon     := "../images/paste.png"
         :cText     := "PushButton 3"
         :nX        := 20
         :nY        := 120
         :bClicked  := {||QOut("clicked-3")}
         :bPressed  := {||QOut("pressed-3")}
         :bReleased := {||QOut("released-3")}
      ENDWITH

      :lVisible := .T.

   ENDWITH

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL
