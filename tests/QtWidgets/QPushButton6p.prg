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
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3

   // create application
   oApp := QApplication():new()

   // create window
   WITH OBJECT oWindow := QWidget():new()

      :nWidth  := 320
      :nHeight := 240

      WITH OBJECT oButton1 := QPushButton():new(oWindow)
         :cText       := "PushButton 1"
         :nX          := 20
         :nY          := 20
         :cObjectName := "button1"
         :connect("clicked()", @buttonClicked())
      ENDWITH

      WITH OBJECT oButton2 := QPushButton():new(oWindow)
         :cText       := "PushButton 2"
         :nX          := 20
         :nY          := 70
         :cObjectName := "button2"
         :connect("clicked()", @buttonClicked())
      ENDWITH

      WITH OBJECT oButton3 := QPushButton():new(oWindow)
         :cText       := "PushButton 3"
         :nX          := 20
         :nY          := 120
         :cObjectName := "button3"
         :connect("clicked()", @buttonClicked())
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

STATIC FUNCTION buttonClicked(oButton)

   IF oButton:objectName() == "button1"
      ? "button 1 clicked"
   ELSEIF oButton:objectName() == "button2"
      ? "button 2 clicked"
   ELSEIF oButton:objectName() == "button3"
      ? "button 3 clicked"
   ENDIF

RETURN NIL
