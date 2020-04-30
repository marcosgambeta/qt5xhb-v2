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
   LOCAL oWindow

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oWindow:setWindowTitle("Teste")

   oWindow:resize(640,480)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
