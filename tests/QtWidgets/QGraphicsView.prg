/*

  Qt5xHb Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v2

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oScene
   LOCAL oView

   oApp := QApplication():new()

   oScene := QGraphicsScene():new()
   oScene:addText( "Hello, world!" )

   oView := QGraphicsView():new( oScene )
   oView:show()

   oApp:exec()

   oScene:delete()

   oView:delete()

   oApp:delete()

RETURN
