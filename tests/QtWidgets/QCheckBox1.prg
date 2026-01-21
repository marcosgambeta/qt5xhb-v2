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
   LOCAL oCheckBox

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()

   oCheckBox := QCheckBox():new("CheckBox", oWindow)
   oCheckBox:move(20, 20)
   ? oCheckBox:onClicked({||qout("clicked")})
   ? oCheckBox:onPressed({||qout("pressed")})
   ? oCheckBox:onReleased({||qout("released")})
   ? oCheckBox:onStateChanged({||qout("stateChanged=" + alltrim(str(oCheckBox:checkState())))})

   // show window
   oWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
