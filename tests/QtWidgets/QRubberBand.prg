//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oRubberBand

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()

   oRubberBand := QRubberBand():new(QRubberBand_Rectangle, oWindow)
   oRubberBand:move(20, 20)
   oRubberBand:resize(100, 100)

   // show window
   oWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL
