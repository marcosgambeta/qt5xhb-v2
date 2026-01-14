//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL aCameras
   LOCAL oVideoWidget
   LOCAL oCamera
   LOCAL oCapture

   STATIC nCounter := 0

   oApp := QApplication():new()

   aCameras := QCameraInfo():availableCameras()

   IF len(aCameras) == 0
      ShowMessage("Info", "Camera not found", QWidget())
      oApp:delete()
      QUIT
   ENDIF

   oVideoWidget := QVideoWidget():new()
   oVideoWidget:resize(640, 480)
   oVideoWidget:show()

   oCamera := QCamera():new(aCameras[1])
   oCamera:start()
   oCamera:setViewfinder(oVideoWidget)

   oCapture := QCameraImageCapture():new(oCamera)
   oCapture:setBufferFormat(QVideoFrame_Format_Jpeg)
   oCapture:setCaptureDestination(QCameraImageCapture_CaptureToFile)

   // press 'C' to capture the image (look in the 'Images' folder)
   oShortcut := QShortcut():new(QKeySequence():new("C"), oVideoWidget)
   oShortcut:onActivated({||iif(oCapture:isReadyForCapture(), oCapture:capture("capture" + alltrim(str(++nCounter))), ShowMessage("Info", "Not ready for capture", oVideoWidget))})

   oApp:exec()

   // delete objects
   oCapture:delete()
   oCamera:delete()
   oVideoWidget:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION ShowMessage(cTitle, cMessage, oParent)

   LOCAL oMB

   oMB := QMessageBox():new(QMessageBox_Information, cTitle, cMessage, QMessageBox_Ok, oParent)

   oMB:exec()

   oMB:delete()

RETURN NIL
