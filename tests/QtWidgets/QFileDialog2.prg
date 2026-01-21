//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

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
   oButton:show()
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

   LOCAL oFileDialog

   oFileDialog := QFileDialog():new(oWindow)

   ? oFileDialog:onFileSelected({|oSender, cFile|qout(oSender:classname()), qout(cFile)})

   oFileDialog:exec()

   oFileDialog:delete()

RETURN NIL
