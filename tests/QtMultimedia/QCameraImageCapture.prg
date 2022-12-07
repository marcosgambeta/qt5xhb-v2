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
   LOCAL aCameras
   LOCAL oVideoWidget
   LOCAL oCamera
   LOCAL oCapture

   STATIC nCounter := 0

   oApp := QApplication():new()

   aCameras := QCameraInfo():availableCameras()

   IF len( aCameras ) == 0
      ShowMessage( "Info", "Camera not found", QWidget() )
      oApp:delete()
      QUIT
   ENDIF

   oVideoWidget := QVideoWidget():new()
   oVideoWidget:resize( 640, 480 )
   oVideoWidget:show()

   oCamera := QCamera():new( aCameras[ 1 ] )
   oCamera:start()
   oCamera:setViewfinder( oVideoWidget )

   oCapture := QCameraImageCapture():new( oCamera )
   oCapture:setBufferFormat( QVideoFrame_Format_Jpeg )
   oCapture:setCaptureDestination( QCameraImageCapture_CaptureToFile )

   // press 'C' to capture the image (look in the 'Images' folder)
   oShortcut := QShortcut():new( QKeySequence():new( "C" ), oVideoWidget )
   oShortcut:onActivated( {||iif( oCapture:isReadyForCapture(), oCapture:capture( "capture" + alltrim( str( ++nCounter ) ) ), ShowMessage( "Info", "Not ready for capture", oVideoWidget ) )} )

   oApp:exec()

   oCapture:delete()
   oCamera:delete()
   oVideoWidget:delete()
   oApp:delete()

RETURN

STATIC FUNCTION ShowMessage( cTitle, cMessage, oParent )

   LOCAL oMB

   oMB := QMessageBox():new( QMessageBox_Information, cTitle, cMessage, QMessageBox_Ok, oParent )

   oMB:exec()

   oMB:delete()

RETURN NIL
