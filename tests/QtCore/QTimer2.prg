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
   LOCAL oTimer1
   LOCAL oTimer2

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with the QTimer class")
   oWindow:resize(640, 480)

   // show window
   oWindow:show()

   // create timer 1
   oTimer1 := QTimer():new(oWindow)
   ? oTimer1:onTimeout({||qout("executing timer 1")})
   oTimer1:setInterval(1000)
   oTimer1:start()

   // create timer 2
   oTimer2 := QTimer():new(oWindow)
   ? oTimer2:onTimeout({||qout("executing timer 2")})
   oTimer2:setInterval(2000)
   oTimer2:start()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
