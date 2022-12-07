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
   LOCAL oPlayer

   oApp := QApplication():new()

   // play the music and quit the application

   oPlayer := QMediaPlayer():new()
   oPlayer:onStateChanged( {|oSender,nState|iif( nState == QMediaPlayer_StoppedState, oApp:quit(), NIL )} )
   oPlayer:setMedia( QMediaContent():new( QUrl():fromLocalFile( "C:\Users\username\Music\somemusic.mp3" ) ) )
   oPlayer:setVolume( 50 )
   oPlayer:play()

   oApp:exec()

   oPlayer:delete()

   oApp:delete()

RETURN
