/*

  Qt5xHb Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-cpp11

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDateEdit

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oDateEdit := QDateEdit():new( oWindow )
   oDateEdit:move( 20, 20 )
   oDateEdit:setTooltip( "Eu sou um QDateEdit" )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
