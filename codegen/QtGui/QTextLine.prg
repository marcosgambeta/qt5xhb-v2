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

$prototype=QTextLine()
$constructor=|new|

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=QRectF rect() const

$prototypeV2=qreal x() const

$prototypeV2=qreal y() const

$prototypeV2=qreal width() const

$prototypeV2=qreal ascent() const

$prototypeV2=qreal descent() const

$prototypeV2=qreal height() const

$prototypeV2=qreal leading() const

$prototype=void setLeadingIncluded(bool included)
$method=|void|setLeadingIncluded|bool

$prototypeV2=bool leadingIncluded() const

$prototypeV2=qreal naturalTextWidth() const

$prototypeV2=qreal horizontalAdvance() const

$prototypeV2=QRectF naturalTextRect() const

$prototype=qreal cursorToX(int *cursorPos, Edge edge = Leading) const
$internalMethod=|qreal|cursorToX,cursorToX1|int *,QTextLine::Edge=QTextLine::Leading

$prototype=qreal cursorToX(int cursorPos, Edge edge = Leading) const
$internalMethod=|qreal|cursorToX,cursorToX2|int,QTextLine::Edge=QTextLine::Leading

/*
[1]qreal cursorToX(int *cursorPos, Edge edge = Leading) const
[2]qreal cursorToX(int cursorPos, Edge edge = Leading) const
*/

%% TODO: resolver conflito
HB_FUNC_STATIC( QTEXTLINE_CURSORTOX )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QTextLine_cursorToX1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QTextLine_cursorToX2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=cursorToX

$prototype=int xToCursor(qreal x, CursorPosition = CursorBetweenCharacters) const
$method=|int|xToCursor|qreal,QTextLine::CursorPosition=QTextLine::CursorBetweenCharacters

$prototype=void setLineWidth(qreal width)
$method=|void|setLineWidth|qreal

$prototype=void setNumColumns(int columns)
$internalMethod=|void|setNumColumns,setNumColumns1|int

$prototype=void setNumColumns(int columns, qreal alignmentWidth)
$internalMethod=|void|setNumColumns,setNumColumns2|int,qreal

/*
[1]void setNumColumns(int columns)
[2]void setNumColumns(int columns, qreal alignmentWidth)
*/

HB_FUNC_STATIC( QTEXTLINE_SETNUMCOLUMNS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextLine_setNumColumns1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextLine_setNumColumns2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setNumColumns

$prototype=void setPosition(const QPointF &pos)
$method=|void|setPosition|const QPointF &

$prototypeV2=QPointF position() const

$prototypeV2=int textStart() const

$prototypeV2=int textLength() const

$prototypeV2=int lineNumber() const

$prototype=void draw(QPainter *p, const QPointF &point, const QTextLayout::FormatRange *selection = nullptr) const
%% TODO: implementar
%% $method=|void|draw|QPainter *,const QPointF &,const QTextLayout::FormatRange *=nullptr

$extraMethods

#pragma ENDDUMP
