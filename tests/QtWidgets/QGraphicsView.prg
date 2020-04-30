/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb-cpp11

*/

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
