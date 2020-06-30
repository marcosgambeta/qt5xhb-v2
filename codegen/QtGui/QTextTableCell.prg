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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextCursor>

$prototype=QTextTableCell()
$internalConstructor=|new1|

$prototype=QTextTableCell(const QTextTableCell &o)
$internalConstructor=|new2|const QTextTableCell &

/*
[1]QTextTableCell()
[2]QTextTableCell(const QTextTableCell &o)
*/

HB_FUNC_STATIC( QTEXTTABLECELL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextTableCell_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTTABLECELL(1) )
  {
    QTextTableCell_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void setFormat( const QTextCharFormat & format )

$prototypeV2=QTextCharFormat format() const

$prototypeV2=int row() const

$prototypeV2=int column() const

$prototypeV2=int rowSpan() const

$prototypeV2=int columnSpan() const

$prototypeV2=bool isValid() const

$prototypeV2=QTextCursor firstCursorPosition() const

$prototypeV2=QTextCursor lastCursorPosition() const

$prototypeV2=int firstPosition() const

$prototypeV2=int lastPosition() const

$prototypeV2=int tableCellFormatIndex() const

$extraMethods

#pragma ENDDUMP
