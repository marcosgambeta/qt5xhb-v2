/*

  Qt5xHb/C++11 Project - Test Program

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
   LOCAL oWebView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste da classe QWebView" )
   oWindow:resize( 800, 600 )

   oWebView := QWebView():new( oWindow )
   oWebView:setUrl( QUrl():new( "https://github.com/magsoftinfo/qt5xhb-cpp11" ) )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
