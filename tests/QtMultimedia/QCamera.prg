//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL aCameras
   LOCAL oMB
   LOCAL oVideoWidget
   LOCAL oCamera

   oApp := QApplication():new()

   aCameras := QCameraInfo():availableCameras()

   IF len(aCameras) == 0
      oMB := QMessageBox():new(QMessageBox_Information, "Info", "Camera not found", QMessageBox_Ok, QWidget())
      oMB:exec()
      oMB:delete()
      oApp:delete()
      QUIT
   ENDIF

   oVideoWidget := QVideoWidget():new()
   oVideoWidget:resize(640, 480)
   oVideoWidget:show()

   oCamera := QCamera():new(aCameras[1])
   oCamera:start()
   oCamera:setViewfinder(oVideoWidget)

   oApp:exec()

   oCamera:delete()
   oVideoWidget:delete()
   oApp:delete()

RETURN
