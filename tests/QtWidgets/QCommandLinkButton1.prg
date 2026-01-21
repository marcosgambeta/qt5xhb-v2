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
   LOCAL oButton

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:resize(320, 240)

   oButton := QCommandLinkButton():new("texto", "descrição", oWindow)
   oButton:move(20, 20)
   ? oButton:onClicked({||qout("clicked")})
   ? oButton:onPressed({||qout("pressed")})
   ? oButton:onReleased({||qout("released")})

   // show window
   oWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
