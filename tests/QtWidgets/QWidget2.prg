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

   oWindow := QWidget():new()
   oWindow:cWindowTitle := "Teste"
   oWindow:nWidth       := 640
   oWindow:nHeight      := 480
   oWindow:lVisible     := .T.

   ? "lAcceptDrops=", oWindow:lAcceptDrops
   ? "lAutoFillBackground=", oWindow:lAutoFillBackground
   ? "lEnabled=", oWindow:lEnabled
   ? "lFocus=", oWindow:lFocus
   ? "lFullScreen=", oWindow:lFullScreen
   ? "nHeight=", oWindow:nHeight
   ? "lIsActiveWindow", oWindow:lIsActiveWindow
   ? "lMaximized=", oWindow:lMaximized
   ? "nMaximumHeight=", oWindow:nMaximumHeight
   ? "nMaximumWidth=", oWindow:nMaximumWidth
   ? "lMinimized=", oWindow:lMinimized
   ? "nMinimumHeight=", oWindow:nMinimumHeight
   ? "nMinimumWidth=", oWindow:nMinimumWidth
   ? "lModal=", oWindow:lModal
   ? "lMouseTracking=", oWindow:lMouseTracking
   ? "cStatusTip=", oWindow:cStatusTip
   ? "cStyleSheet=", oWindow:cStyleSheet
   ? "cToolTip=", oWindow:cToolTip
   ? "nToolTipDuration=", oWindow:nToolTipDuration
   ? "lUpdatesEnabled=", oWindow:lUpdatesEnabled
   ? "lVisible=", oWindow:lVisible
   ? "cWhatsThis=", oWindow:cWhatsThis
   ? "nWidth=", oWindow:nWidth
   ? "nWindowOpacity=", oWindow:nWindowOpacity
   ? "cWindowTitle=", oWindow:cWindowTitle
   ? "nX=", oWindow:nX
   ? "nY=", oWindow:nY

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
