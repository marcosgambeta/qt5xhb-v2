/*

  Qt5xHb Project - Test Program

  Copyright (C) 2022 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-cpp11

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow

   oApp := QApplication():new()

   WITH OBJECT oWindow := QWidget():new()
      :cWindowTitle := "Window"
      :nWidth       := 640
      :nHeight      := 480
      :lVisible     := .T.
   ENDWITH

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
