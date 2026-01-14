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
   LOCAL oTimer3

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
   oTimer1:setInterval(1000)
   ? oTimer1:onTimeout({||qout("executing timer 1")})

   // create timer 2
   oTimer2 := QTimer():new(oWindow)
   oTimer2:setInterval(2000)
   ? oTimer2:onTimeout({||qout("executing timer 2")})

   // create timer 3
   oTimer3 := QTimer():new(oWindow)
   oTimer3:setInterval(3000)
   ? oTimer3:onTimeout({||qout("executing timer 3")})

   oTimer1:start()
   oTimer2:start()
   oTimer3:start()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
