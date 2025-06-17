//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
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

   oScene:delete()

   oView:delete()

   oApp:delete()

RETURN NIL
