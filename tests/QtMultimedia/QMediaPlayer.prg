//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oPlayer

   oApp := QApplication():new()

   // play the music and quit the application

   oPlayer := QMediaPlayer():new()
   oPlayer:onStateChanged({|oSender, nState|IIf(nState == QMediaPlayer_StoppedState, oApp:quit(), NIL)})
   oPlayer:setMedia(QMediaContent():new(QUrl():fromLocalFile("C:\Users\username\Music\somemusic.mp3")))
   oPlayer:setVolume(50)
   oPlayer:play()

   oApp:exec()

   oPlayer:delete()

   oApp:delete()

RETURN NIL
