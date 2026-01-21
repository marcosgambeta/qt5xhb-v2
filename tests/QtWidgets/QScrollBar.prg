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
   LOCAL oScrollBar

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oScrollBar := QScrollBar():new(oWindow)
   oScrollBar:move(20, 20)
   oScrollBar:resize(20, 400)
   oScrollBar:setTooltip("Eu sou um QScrollBar")
   ? oScrollBar:onSliderMoved({|oSender, nValue|test(oSender, nValue)})

   // show window
   oWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION test(oSender, nValue)

   qout("slider moved")
   qout(oSender:classname())
   qout(nValue)

RETURN NIL
