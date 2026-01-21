//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oDB
   LOCAL oWindow
   LOCAl oModel
   LOCAL oView

   // create application
   oApp := QApplication():new()

   // cria um objeto da classe QSqlDatabase
   oDB := QSqlDatabase():addDatabase("QSQLITE", "connection")

   // configura
   oDB:setHostName("localhost")
   oDB:setDatabaseName("HHeaderView.db")

   // abre o arquivo
   IF !oDB:open()
      oApp:delete()
      QUIT
   ENDIF

   IF ascan(oDB:tables(QSql_Tables), "cadastro") == 0
      // cria a tabela
      oDB:exec("CREATE TABLE cadastro(id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, saldo REAL)")
      // insere dados
      oDB:transaction()
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Antonio',   12345.67)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Bernardo',      0.01)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Carlos',        0.10)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Diogo',         1.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Elias',        10.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Fernando',    100.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Gabriel',     200.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Henrique',    300.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Ismael',      400.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Jonas',       500.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Leonardo',   -500.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Marcos',     -400.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Norberto',   -300.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Odecio',     -200.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Paulo',      -100.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Renato',      -10.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Silvio',       -1.00)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Tiago',        -0.10)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Ulisses',      -0.01)")
      oDB:exec("INSERT INTO cadastro(nome, saldo) VALUES('Valdir',   -12345.67)")
      oDB:commit()
   ENDIF

   // cria o modelo
   oModel := QSqlTableModel():new(NIL, oDB)

   // define a tabela
   oModel:setTable("cadastro")

   // define as alteracoes para serem imediatas
   oModel:setEditStrategy(QSqlTableModel_OnFieldChange)

   // preenche o modelo com os dados da tabela
   oModel:select()

   // define os titulos dos cabecalhos
   oModel:setHeaderData(1, Qt_Horizontal, QVariant():new("Nome"))
   oModel:setHeaderData(2, Qt_Horizontal, QVariant():new("Saldo"))

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   // cria um objeto QHeaderView personalizado
   oHeaderView := HHeaderView():new(Qt_Horizontal)
   oHeaderView:setPaintSectionCB({|oPainter, oRect, nLogicalIndex|
      oPainter:drawText(oRect, Qt_AlignCenter, upper(oModel:headerData(nLogicalIndex, Qt_Horizontal, Qt_DisplayRole):toString()))
   })
   oHeaderView:setSectionsClickable(.T.)
   oHeaderView:onDestroyed({||qout("oHeaderView-destroyed")})

   // cria um objeto da classe QTableView
   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(640 - 20, 480 - 20)
   oView:setHorizontalHeader(oHeaderView)

   // liga o modelo ao visualizador
   oView:setModel(oModel)

   // esconde a coluna 0 'Id'
   oView:hideColumn(0)

   // show window
   oWindow:show()

   // execute application (start event loop)
   oApp:exec()

   // delete objects
   oWindow:delete()
   oModel:delete()
   oApp:delete()

RETURN NIL
