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
   LOCAL oRadioButton1
   LOCAL oRadioButton2

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()

   oRadioButton1 := QRadioButton():new("RadioButton1", oWindow)
   oRadioButton1:move(20, 20)
   ? oRadioButton1:onClicked({||qout("1-clicked")})
   ? oRadioButton1:onPressed({||qout("1-pressed")})
   ? oRadioButton1:onReleased({||qout("1-released")})

   oRadioButton2 := QRadioButton():new("RadioButton2", oWindow)
   oRadioButton2:move(20, 70)
   ? oRadioButton2:onClicked({||qout("2-clicked")})
   ? oRadioButton2:onPressed({||qout("2-pressed")})
   ? oRadioButton2:onReleased({||qout("2-released")})

   oRadioButton1:setChecked(.T.)

   // show window
   oWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
