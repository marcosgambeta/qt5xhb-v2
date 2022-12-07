/*

  Qt5xHb Project - Test Program

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
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 800, 600 )

   oModel := HAbstractTableModel():new()
   oModel:setRowCountCB( {||100} ) // total de linhas
   oModel:setColumnCountCB( {||10} ) // total de colunas
   oModel:setCB( Qt_DisplayRole, {|nRow,nCol|"Célula " + alltrim( str( nRow ) ) + "," + alltrim( str( nCol ) )} ) // conteúdo da célula
   oModel:setCB( Qt_ToolTipRole, {|nRow,nCol|"Esta é a célula " + alltrim( str( nRow ) ) + "," + alltrim( str( nCol ) )} ) // tooltip da célula
   oModel:setHorizontalHeaderCB( Qt_DisplayRole, {|nCol|"Coluna " + strzero( nCol, 2 )} ) // títulos das colunas
   oModel:setHorizontalHeaderCB( Qt_ToolTipRole, {|nCol|"Esta é a coluna " + strzero( nCol, 2 )} ) // tooltips das colunas
   oModel:setVerticalHeaderCB( Qt_DisplayRole, {|nRow|"Linha " + alltrim( str( nRow ) )} ) // títulos das linhas
   oModel:setVerticalHeaderCB( Qt_ToolTipRole, {|nRow|"Esta é a linha " + alltrim( str( nRow ) )} ) // tooltips das linhas

   oView := QTableView():new( oWindow )
   oView:move( 10, 10 )
   oView:resize( 800 - 20, 600 - 20 )
   oView:setModel( oModel )

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN
