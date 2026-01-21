//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:resize(640, 480)

   oButton := QPushButton():new("Mostrar janela de diálogo", oWindow)
   oButton:move(20, 20)
   ? oButton:onClicked({||dialog(oWindow)})

   // show window
   oWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION dialog(oWindow)

   LOCAL oWizard

   oWizard := QWizard():new(oWindow)

   oWizard:exec()

   oWizard:delete()

RETURN NIL
