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
   LOCAL oTimer

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with the QTimer class")
   oWindow:resize(640, 480)

   // show window
   oWindow:show()

   // create timer
   oTimer := QTimer():new(oWindow)
   ? oTimer:onTimeout({||qout("executing timer")})
   oTimer:setInterval(1000)
   oTimer:start()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
