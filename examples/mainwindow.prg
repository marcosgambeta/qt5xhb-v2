//
// Qt5xHb Project - Example Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// Exemplo de criação da janela principal de uma aplicação

// ATENÇÂO: por causa de diferenças entre Harbour e xHarbour, este exemplo
// contém linhas de programação específicas, conforme o projeto utilizado.

#include "qt5xhb.ch"

STATIC s_oApp
STATIC s_oMainWindow

// a função principal (main) cria um objeto da classe QApplication,
// um objeto da classe MainWindow e inicia o loop de eventos

PROCEDURE Main()

   s_oApp := QApplication():new()

   s_oMainWindow := MainWindow():new()

   s_oMainWindow:show()

   s_oApp:exec()

   s_oMainWindow:delete()

   s_oApp:delete()

RETURN

// a classe MainWindow é uma classe derivada da classe QMainWindow, com métodos para:
// . definir as propriedades da janela
// . criar a barra de menus e as ações
// . criar a barra de ferramentas
// . criar a barra de status
// . confirmar se o usuário quer realmente sair do programa
// . exibir mensagens

#include <hbclass.ch>

CLASS MainWindow INHERIT QMainWindow

   DATA oMenuBar
   DATA oMenu1
   DATA oActionNew
   DATA oActionOpen
   DATA oActionSave
   DATA oMenu2
   DATA oActionCut
   DATA oActionCopy
   DATA oActionPaste
   DATA oMenu3
   DATA oActionAbout
   DATA oActionAboutxH
   DATA oActionAboutCC
   DATA oActionAboutQt
   DATA oActionAboutQt5xHb
   DATA oToolBar
   DATA oStatusBar

   METHOD new()
   METHOD defineProperties()
   METHOD createMenuBar()
   METHOD createToolBar()
   METHOD createStatusBar()
   METHOD defineEvents()
   METHOD closeMainWindow(oSender, oCloseEvent)
   METHOD showMessage(cText)

END CLASS

// o método 'new' executa o método 'new' da classe QMainWindow
// e configura a janela principal

METHOD new() CLASS MainWindow

   #ifdef __XHARBOUR__
   super:new()
   #else
   ::super:new()
   #endif

   ::defineProperties()
   ::createMenuBar()
   ::createToolBar()
   ::createStatusBar()
   ::defineEvents()

RETURN self

// o método 'defineProperties' define as propriedades
// 'title' e 'size' da janela principal

METHOD defineProperties() CLASS MainWindow

   ::setWindowTitle("Example of creating the main window")
   ::resize(800, 600)

RETURN self

// o método 'createMenuBar' cria os menus da janela principal
// e configura a ação que cada item do menu irá executar

METHOD createMenuBar() CLASS MainWindow

   ::oMenuBar := ::menuBar()

   ::oMenu1 := ::oMenuBar:addMenu("&File")

   ::oActionNew := ::oMenu1:AddAction(QIcon():new("images/new.png"), "&New")
   ::oActionNew:setStatusTip("Execute the 'New' option")
   ::oActionNew:onTriggered({||::showMessage("File/New")})

   ::oActionOpen := ::oMenu1:AddAction(QIcon():new("images/open.png"), "&Open")
   ::oActionOpen:setStatusTip("Execute the 'Open' option")
   ::oActionOpen:onTriggered({||::showMessage("File/Open")})

   ::oActionSave := ::oMenu1:AddAction(QIcon():new("images/save.png"), "&Save")
   ::oActionSave:setStatusTip("Execute the 'Save' option")
   ::oActionSave:onTriggered({||::showMessage("File/Save")})

   ::oMenu2 := ::oMenuBar:AddMenu("&Edit")

   ::oActionCut := ::oMenu2:AddAction(QIcon():New("images/cut.png"), "Cu&t")
   ::oActionCut:setStatusTip("Execute the 'Cut' option")
   ::oActionCut:setShortcut(QKeySequence():new("CTRL+X"))
   ::oActionCut:onTriggered({||::showMessage("Edit/Cut")})

   ::oActionCopy := ::oMenu2:AddAction(QIcon():new("images/copy.png"), "&Copy")
   ::oActionCopy:setStatusTip("Execute the 'Copy' option")
   ::oActionCopy:setShortcut(QKeySequence():new("CTRL+C"))
   ::oActionCopy:onTriggered({||::showMessage("Edit/Copy")})

   ::oActionPaste := ::oMenu2:AddAction(QIcon():New("images/paste.png"), "&Paste")
   ::oActionPaste:setStatusTip("Execute the 'Paste' option")
   ::oActionPaste:setShortcut(QKeySequence():new("CTRL+V"))
   ::oActionPaste:onTriggered({||::showMessage("Edit/Paste")})

   ::oMenu3 := ::oMenuBar:AddMenu("&About")

   ::oActionAbout := ::oMenu3:AddAction("&Example")
   ::oActionAbout:setStatusTip("Show information about this example")
   ::oActionAbout:onTriggered({||::showMessage("This example demonstrates how to create the main window of an application.")})

   ::oActionAboutxH := ::oMenu3:AddAction("&Harbour/xHarbour")
   ::oActionAboutxH:setStatusTip("Show the Harbour/xHarbour version")
   ::oActionAboutxH:onTriggered({||::showMessage(version())})

   ::oActionAboutCC := ::oMenu3:AddAction("&C/C++ Compiler")
   ::oActionAboutCC:setStatusTip("Show the C++ compiler version")
   ::oActionAboutCC:onTriggered({||::showMessage(hb_compiler())})

   ::oActionAboutQt := ::oMenu3:AddAction("&Qt Framework")
   ::oActionAboutQt:setStatusTip("Show the Qt Framework version")
   ::oActionAboutQt:onTriggered({||s_oApp:aboutQt()})

   ::oActionAboutQt5xHb := ::oMenu3:AddAction("&Qt5xHb")
   ::oActionAboutQt5xHb:setStatusTip("Show the Qt5xHb version")
   ::oActionAboutQt5xHb:onTriggered({||::showMessage(qt5xhb_version())})

RETURN self

// o método 'createToolBar' cria a barra de ferramentas da janela principal
// e configura a ação que cada botão irá executar

METHOD createToolBar() CLASS MainWindow

   ::oToolBar := ::addToolBar("")

   ::oToolBar:addAction(::oActionNew)
   ::oToolBar:addAction(::oActionOpen)
   ::oToolBar:addAction(::oActionSave)

   ::oToolBar:addSeparator()

   ::oToolBar:addAction(::oActionCut)
   ::oToolBar:addAction(::oActionCopy)
   ::oToolBar:addAction(::oActionPaste)

RETURN self

// o método 'createStatusBar' cria a barra de status

METHOD createStatusBar() CLASS MainWindow

   ::oStatusBar := ::statusBar()

RETURN self

// o método 'defineEvent' define os eventos que serão processados

METHOD defineEvents() CLASS MainWindow

   ::onCloseEvent({|oSender, oEvent|::CloseMainWindow(oSender, oEvent)})

RETURN self

// o método 'closeMainWindow' confirma, com o usuário, se quer
// realmente sair do programa

METHOD closeMainWindow(oSender, oCloseEvent) CLASS MainWindow

   LOCAL oMB
   LOCAL nRet

   HB_SYMBOL_UNUSED(oSender)

   oMB := QMessageBox():new(QMessageBox_Question,                        ;
                            "Attention",                                   ;
                            "Do you really want to leave the program ?",         ;
                            QMessageBox_Yes+QMessageBox_No,              ;
                            self,                                        ;
                            Qt_Dialog + Qt_MSWindowsFixedSizeDialogHint)

   nRet := oMB:exec()

   oMB:delete()

   IF nRet == QMessageBox_Yes
      oCloseEvent:accept()
   endif

   IF nRet == QMessageBox_No
      oCloseEvent:ignore()
   endif

RETURN .T.

// o método 'showMessage' exibe uma janela com uma mensagem,
// usando a classe QMessageBox

METHOD showMessage(cText) CLASS MainWindow

   LOCAL oMB

   oMB := QMessageBox():new(QMessageBox_Information, "Information", cText, QMessageBox_Ok, self)

   oMB:exec()

   oMB:delete()

RETURN NIL
