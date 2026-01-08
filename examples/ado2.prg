//
// Qt5xHb Project - Example Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

// constantes do ADO utilizadas neste exemplo
#define adOpenKeyset     1
#define adLockOptimistic 3
#define adBookmarkFirst  1
#define adInteger        3
#define adVarWChar       202

// Atenção:
// Este exemplo é compatível com o Harbour, requerendo ajustes para funcionar com o xHarbour.
// Requer a biblioteca hbwin na compilação:
// hbmk2 ado2 ..\qt5xhb.hbc hbwin.hbc

//#define PROVIDER "Provider=Microsoft.Jet.OLEDB.4.0"
#define PROVIDER "Provider=Microsoft.ACE.OLEDB.12.0"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL oConnection
   LOCAL oRecordset

   CriarBancoDeDados()

   oConnection := win_OleCreateObject("ADODB.Connection")
   oConnection:Open(PROVIDER + ";Data Source=" + QDir():currentPath() + "\teste.mdb")
   oRecordset := win_OleCreateObject("ADODB.Recordset")
   oRecordset:Open("SELECT * FROM cadastro", oConnection, adOpenKeyset, adLockOptimistic)

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Exemplo de uso do ADO com Qt")
   oWindow:resize(800, 600)

   // cria e configura o modelo
   oModel := AdoTableModel():new():setRecordSet(oRecordset)

   // cria o visualizador e associa ao modelo
   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)

   oWindow:show()

   oApp:exec()

   oRecordset := NIL

   oConnection := NIL

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL

// A função CriarBancoDeDados cria um banco de dados do Access, na pasta
// corrente. Neste banco, é criada uma tabela chamada 'cadastro', com três
// campos: 'codigo', 'nome' e 'valor'. Nesta tabela são inseridos 1000
// registros.

STATIC FUNCTION CriarBancoDeDados()

   LOCAL oCatalog
   LOCAL oTable
   LOCAL oConnection
   LOCAL oRecordset
   LOCAL n

   // comente esta linha para o arquivo não ser recriado
   // cada vez que o exemplo for executado
   ferase("teste.mdb")

   IF !file(QDir():currentPath() + "\teste.mdb")
      oCatalog := win_OleCreateObject("ADOX.Catalog")
      // cria o mdb
      oCatalog:Create(PROVIDER + ";Data Source=" + QDir():currentPath() + "\teste.mdb")
      oCatalog:ActiveConnection := PROVIDER + ";Data Source=" + QDir():currentPath() + "\teste.mdb"
      // cria a tabela
      oTable := win_OleCreateObject("ADOX.Table")
      oTable:Name := "cadastro"
      oTable:Columns:Append("codigo", adInteger)
      oTable:Columns:Append("nome", adVarWChar, 40)
      oTable:Columns:Append("valor", adInteger)
      oCatalog:Tables:Append(oTable)
      oTable := NIL
      oCatalog := NIL
      // adiciona 1000 registros na tabela
      oConnection := win_OleCreateObject("ADODB.Connection")
      oConnection:Open(PROVIDER + ";Data Source=" + QDir():currentPath() + "\teste.mdb")
      oRecordset := win_OleCreateObject("ADODB.Recordset")
      oRecordset:Open("SELECT * FROM cadastro", oConnection, adOpenKeyset, adLockOptimistic)
      FOR n := 1 TO 1000
         oRecordset:AddNew()
         oRecordset:Fields(0):Value := n
         oRecordset:Fields(1):Value := "Nome do cliente " + alltrim(str(n))
         oRecordset:Fields(2):Value := n * 10
         oRecordset:Update()
      NEXT n
      oRecordset := NIL
      oConnection := NIL
   ENDIF

RETURN NIL

#include <hbclass.ch>

CLASS AdoTableModel INHERIT HAbstractTableModelV2

   DATA oRecordset

   METHOD new
   METHOD rowCount
   METHOD columnCount
   METHOD data
   METHOD headerData
   METHOD recordset
   METHOD setRecordset

END CLASS

METHOD new(...) CLASS AdoTableModel

   ::super:new(...)

   ::setRowCountCB({|...|::rowCount(...)})
   ::setColumnCountCB({|...|::columnCount(...)})
   ::setDataCB({|...|::data(...)})
   ::setHeaderDataCB({|...|::headerData(...)})

RETURN self

METHOD rowCount() CLASS AdoTableModel
RETURN ::oRecordset:recordCount

METHOD columnCount() CLASS AdoTableModel
RETURN ::oRecordset:Fields:count()

METHOD data(oIndex, nRole) CLASS AdoTableModel

   LOCAL oVariant := QVariant():new()
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole
         ::oRecordset:move(nRow, adBookmarkFirst)
         oVariant := QVariant():new(::oRecordset:Fields(nColumn):value)
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData(nSection, nOrientation, nRole) CLASS AdoTableModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new(::oRecordset:Fields(nSection):name)
   ENDIF

RETURN oVariant

METHOD recordSet() CLASS AdoTableModel
RETURN ::oRecordSet

METHOD setRecordSet(oRecordSet) CLASS AdoTableModel
   ::oRecordSet := oRecordSet
RETURN SELF
