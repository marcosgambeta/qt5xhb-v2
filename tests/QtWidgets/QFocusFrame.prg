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

   lOCAL oApp
   LOCAL oWindow
   LOCAL oLabel
   LOCAL oFocusFrame

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oLabel := QLabel():new("QLabel",oWindow)
   oLabel:move(20,20)

   oFocusFrame := QFocusFrame():new()
   oFocusFrame:setWidget(oLabel)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
