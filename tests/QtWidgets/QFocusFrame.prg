//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   lOCAL oApp
   LOCAL oWindow
   LOCAL oLabel
   LOCAL oFocusFrame

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()

   oLabel := QLabel():new("QLabel", oWindow)
   oLabel:move(20, 20)

   oFocusFrame := QFocusFrame():new()
   oFocusFrame:setWidget(oLabel)

   // show window
   oWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
