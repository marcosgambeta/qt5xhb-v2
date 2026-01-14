//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oScene
   LOCAL oView

   oApp := QApplication():new()

   oScene := QGraphicsScene():new()
   oScene:addText("Hello, world!")

   oView := QGraphicsView():new(oScene)
   oView:show()

   oApp:exec()

   // delete objects
   oScene:delete()
   oView:delete()
   oApp:delete()

RETURN NIL
