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
   LOCAL oCal

   oApp := QApplication():new()

   oWindow := QWidget():new():setWindowTitle("Teste"):resize(640,480)

   oCal := QCalendarWidget():new(oWindow):move(20,20):setTooltip("Eu sou um QCalendarWidget")

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
