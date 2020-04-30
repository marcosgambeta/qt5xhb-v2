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
   LOCAL oQuickWidget

   oApp := QApplication():new()

   oQuickWidget := QQuickWidget():new()
   oQuickWidget:setSource(QUrl():fromLocalFile("QQuickWidget.qml"))
   oQuickWidget:show()

   oApp:exec()

   oQuickWidget:delete()

   oApp:delete()

RETURN
