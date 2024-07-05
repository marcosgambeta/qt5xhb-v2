//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

PROCEDURE Main()

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

RETURN
