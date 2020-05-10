/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb-cpp11

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oDB
   LOCAL oWindow
   LOCAl oModel
   LOCAL oView
   LOCAL oTextDelegate
   LOCAL oValueDelegate

   oApp := QApplication():new()

   // cria um objeto da classe QSqlDatabase
   oDB := QSqlDatabase():addDatabase("QSQLITE","connection")

   // configura
   oDB:setHostName("localhost")
   oDB:setDatabaseName("HStyledItemDelegate.db")

   // abre o arquivo
   IF !oDB:open()
      oApp:delete()
      QUIT
   ENDIF

   IF ascan(oDB:tables(QSql_Tables), "cadastro") == 0
      // cria a tabela
      oDB:exec("CREATE TABLE cadastro( id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, saldo REAL )")
      // insere dados
      oDB:transaction()
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Antonio',   12345.67 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Bernardo',      0.01 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Carlos',        0.10 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Diogo',         1.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Elias',        10.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Fernando',    100.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Gabriel',     200.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Henrique',    300.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Ismael',      400.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Jonas',       500.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Leonardo',   -500.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Marcos',     -400.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Norberto',   -300.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Odecio',     -200.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Paulo',      -100.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Renato',      -10.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Silvio',       -1.00 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Tiago',        -0.10 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Ulisses',      -0.01 )")
      oDB:exec("INSERT INTO cadastro( nome, saldo ) VALUES( 'Valdir',   -12345.67 )")
      oDB:commit()
   ENDIF

   // cria o modelo
   oModel := QSqlTableModel():new(,oDB)

   // define a tabela
   oModel:setTable("cadastro")

   // define as alteracoes para serem imediatas
   oModel:setEditStrategy(QSqlTableModel_OnFieldChange)

   // preenche o modelo com os dados da tabela
   oModel:select()

   // define os titulos dos cabecalhos
   oModel:setHeaderData(1,Qt_Horizontal,QVariant():new("Nome"))
   oModel:setHeaderData(2,Qt_Horizontal,QVariant():new("Saldo"))

   // cria a janela
   oWindow := QWidget():new():setWindowTitle("Teste"):resize(640,480)

   // cria um objeto da classe QTableView
   oView := QTableView():new(oWindow):move(10,10):resize(640-20,480-20)

   // liga o modelo ao visualizador
   oView:setModel(oModel)

   // esconde a coluna 0 'Id'
   oView:hideColumn(0)

   // cria um objeto da classe TextDelegate para uso na coluna 1
   oTextDelegate := TextDelegate():new(oView)
   oTextDelegate:onCloseEditor({|oSender,oEditor,nHint|qout("oTextDelegate - closeEditor - "+alltrim(str(nHint)))})
   oTextDelegate:onCommitData({|oSender,oEditor|qout("oTextDelegate - commitData")})
   oView:setItemDelegateForColumn(1, oTextDelegate)

   // cria um objeto da classe ValueDelegate para uso na coluna 2
   oValueDelegate := ValueDelegate():new(oView)
   oValueDelegate:onCloseEditor({|oSender,oEditor,nHint|qout("oValueDelegate - closeEditor - "+alltrim(str(nHint)))})
   oValueDelegate:onCommitData({|oSender,oEditor|qout("oValueDelegate - commitData")})
   oView:setItemDelegateForColumn(2, oValueDelegate)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oModel:delete()

   oApp:delete()

RETURN

#include "hbclass.ch"

/*
  Class TextDelegate
*/

CLASS TextDelegate INHERIT HStyledItemDelegate

   METHOD new
   METHOD displayText
   METHOD createEditor
   METHOD setEditorData
   METHOD setModelData

END CLASS

METHOD new(...) CLASS TextDelegate

   ::super:new(...)

   ::setDisplayTextCB( {|...|::displayText(...)} )
   ::setCreateEditorCB( {|...|::createEditor(...)} )
   ::setEditorDataCB( {|...|::setEditorData(...)} )
   ::setModelDataCB( {|...|::setModelData(...)} )

RETURN self

METHOD displayText(oVariant, oLocale) CLASS TextDelegate

RETURN oVariant:toString()

METHOD createEditor(oParent, oOption, oIndex) CLASS TextDelegate

   LOCAL oEditor

   oEditor := QLineEdit():new(oParent)
   oEditor:onDestroyed( {||qout("oEditor (QLineEdit): destroyed")} )

RETURN oEditor

METHOD setEditorData(oEditor, oIndex) CLASS TextDelegate

   LOCAL cValue

   cValue := oIndex:model():data(oIndex, Qt_EditRole):toString()

   oEditor:setText( cValue )

RETURN NIL

METHOD setModelData(oEditor, oModel, oIndex) CLASS TextDelegate

   LOCAL cValue

   cValue := oEditor:text()

   oModel:setData( oIndex, QVariant():new( cValue ), Qt_EditRole )

RETURN NIL

/*
  Class ValueDelegate
*/

CLASS ValueDelegate INHERIT HStyledItemDelegate

   METHOD new
   METHOD paint
   METHOD createEditor
   METHOD setEditorData
   METHOD setModelData

END CLASS

METHOD new(...) CLASS ValueDelegate

   ::super:new(...)

   ::setPaintCB( {|...|::paint(...)} )
   ::setCreateEditorCB( {|...|::createEditor(...)} )
   ::setEditorDataCB( {|...|::setEditorData(...)} )
   ::setModelDataCB( {|...|::setModelData(...)} )

RETURN self

METHOD paint(oPainter, oOption, oIndex) CLASS ValueDelegate

   LOCAL nValue
   LOCAL cValue
   LOCAL oPen

   // checa se o estado da celula = selecionado e preenche o fundo de acordo
   IF hb_bitand( oOption:state(), QStyle_State_Selected ) != 0
      oPainter:fillRect( oOption:rect(), oOption:palette():highlight() )
   ENDIF

   // obtem o valor da celula
   nValue := oIndex:data( Qt_DisplayRole ):toReal()

   // formata o valor
   cValue := transform(nValue, "@E 999,999,999.99") + space(1)

   IF nValue < 0
      oPen := oPainter:pen()
      oPen:setColor( QColor():new("red") )
      oPainter:setPen(oPen)
   ELSE
      oPen := oPainter:pen()
      oPen:setColor( QColor():new("blue") )
      oPainter:setPen(oPen)
   ENDIF

   // alinha o texto na celula
   oPainter:drawText( oOption:rect(), Qt_AlignRight+Qt_AlignVCenter, cValue )

RETURN NIL

METHOD createEditor(oParent, oOption, oIndex) CLASS ValueDelegate

   LOCAL oEditor

   oEditor := QDoubleSpinBox():new(oParent)
   oEditor:setSingleStep(0.01)
   oEditor:setMinimum(-99999999.99)
   oEditor:setMaximum(999999999.99)
   oEditor:onDestroyed( {||qout("oEditor (QDoubleSpinBox): destroyed")} )

RETURN oEditor

METHOD setEditorData(oEditor, oIndex) CLASS ValueDelegate

   LOCAL nValue

   nValue := oIndex:model():data( oIndex, Qt_EditRole ):toReal()

   oEditor:setValue( nValue )

RETURN NIL

METHOD setModelData(oEditor, oModel, oIndex) CLASS ValueDelegate

   LOCAL nValue

   nValue := oEditor:value()

   oModel:setData( oIndex, QVariant():new( nValue ), Qt_EditRole )

RETURN NIL
