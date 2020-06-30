%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextFrame

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextCursor>

$prototype=QTextTable(QTextDocument *doc)
$constructor=|new|QTextDocument *

$deleteMethod

$prototypeV2=void resize( int rows, int cols )

$prototypeV2=void insertRows( int pos, int num )

$prototypeV2=void insertColumns( int pos, int num )

$prototypeV2=void appendRows( int count )

$prototypeV2=void appendColumns( int count )

$prototypeV2=void removeRows( int pos, int num )

$prototypeV2=void removeColumns( int pos, int num )

$prototype=void mergeCells(int row, int col, int numRows, int numCols)
$internalMethod=|void|mergeCells,mergeCells1|int,int,int,int

$prototype=void mergeCells(const QTextCursor &cursor)
$internalMethod=|void|mergeCells,mergeCells2|const QTextCursor &

/*
[1]void mergeCells(int row, int col, int numRows, int numCols)
[2]void mergeCells(const QTextCursor &cursor)
*/

HB_FUNC_STATIC( QTEXTTABLE_MERGECELLS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QTextTable_mergeCells1();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextTable_mergeCells2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mergeCells

$prototypeV2=void splitCell( int row, int col, int numRows, int numCols )

$prototypeV2=int rows() const

$prototypeV2=int columns() const

$prototype=QTextTableCell cellAt(int row, int col) const
$internalMethod=|QTextTableCell|cellAt,cellAt1|int,int

$prototype=QTextTableCell cellAt(int position) const
$internalMethod=|QTextTableCell|cellAt,cellAt2|int

$prototype=QTextTableCell cellAt(const QTextCursor &c) const
$internalMethod=|QTextTableCell|cellAt,cellAt3|const QTextCursor &

/*
[1]QTextTableCell cellAt(int row, int col) const
[2]QTextTableCell cellAt(int position) const
[3]QTextTableCell cellAt(const QTextCursor &c) const
*/

HB_FUNC_STATIC( QTEXTTABLE_CELLAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextTable_cellAt1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextTable_cellAt2();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextTable_cellAt3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=cellAt

$prototypeV2=QTextCursor rowStart( const QTextCursor & c ) const

$prototypeV2=QTextCursor rowEnd( const QTextCursor & c ) const

$prototypeV2=void setFormat( const QTextTableFormat & format )

$prototypeV2=QTextTableFormat format() const

#pragma ENDDUMP
