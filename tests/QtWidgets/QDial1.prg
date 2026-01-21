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
   LOCAL oDial

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oDial := QDial():new(oWindow)
   oDial:move(20, 20)
   oDial:setTooltip("Eu sou um QDial")
   ? oDial:onSliderMoved({|oSender, nValue|test(oSender, nValue)})
   oDial:show()

   // show window
   oWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION test(oWidget, nValue)

   qout("slider moved")
   qout(oWidget:classname())
   qout(nValue)

RETURN NIL
