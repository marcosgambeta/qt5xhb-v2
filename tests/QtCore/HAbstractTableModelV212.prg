/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb-cpp11

*/

#include "qt5xhb.ch"

STATIC aDados

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL nRow
   LOCAL nColumn

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800,600)

   aDados := array(100,100)

   FOR nRow := 0 TO 99
      FOR nColumn := 0 TO 99
         aDados[nRow+1,nColumn+1] := alltrim(str(nRow))+","+alltrim(str(nColumn))
      NEXT nColumn
   NEXT nRow

   oModel := myModel():new()

   oView := QTableView():new(oWindow)
   oView:move(10,10)
   oView:resize(800-20,600-20)
   oView:setModel(oModel)
   oView:resizeRowsToContents()
   oView:resizeColumnsToContents()

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN

#include "hbclass.ch"

CLASS myModel INHERIT HAbstractTableModelV2

   METHOD new
   METHOD rowCount
   METHOD columnCount
   METHOD data
   METHOD headerData
   METHOD flags
   METHOD setData

END CLASS

METHOD new(...) CLASS myModel

   ::super:new(...)

   ::setRowCountCB( {|...|::rowCount(...)} )
   ::setColumnCountCB( {|...|::columnCount(...)} )
   ::setDataCB( {|...|::data(...)} )
   ::setHeaderDataCB( {|...|::headerData(...)} )
   ::setFlagsCB( {|...|::flags(...)} )
   ::setSetDataCB( {|...|::setData(...)} )

RETURN self

METHOD rowCount() CLASS myModel
RETURN len(aDados)

METHOD columnCount() CLASS myModel
RETURN len(aDados[1])

METHOD data(oIndex, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole
         oVariant := QVariant():new(aDados[nRow+1,nColumn+1])
      ELSEIF nRole == Qt_EditRole
         oVariant := QVariant():new(aDados[nRow+1,nColumn+1])
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData(nSection, nOrientation, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Coluna "+alltrim(str(nSection)))
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Linha "+alltrim(str(nSection)))
   ENDIF

RETURN oVariant

METHOD flags(oIndex) CLASS myModel

   LOCAL nFlags := Qt_ItemIsSelectable + Qt_ItemIsEditable + Qt_ItemIsEnabled
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

RETURN nFlags

METHOD setData(oIndex, oVariant, nRole) CLASS myModel

   LOCAL lSuccess := .F.
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()
   LOCAL cValue := ""

   IF oIndex:isValid()

      IF nRole == Qt_EditRole

         cValue := oVariant:toString()

         IF !empty(cValue)
            aDados[nRow+1,nColumn+1] := oVariant:toString()
            lSuccess := .T.
         ENDIF

      ENDIF

   ENDIF

RETURN lSuccess
