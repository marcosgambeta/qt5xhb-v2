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

$prototype=QTextInlineObject(int i, QTextEngine *e)
%% TODO: classe QTextEngine
%% $internalConstructor=|new1|int,QTextEngine *

$prototype=QTextInlineObject()
$internalConstructor=|new2|

/*
[1]QTextInlineObject(int i, QTextEngine *e)
[2]QTextInlineObject()
*/

HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW )
{
%%  if( ISNUMPAR(2) && ISNUM(1) && ISOBJECT(2) )
%%  {
%%    QTextInlineObject_new1();
%%  }
%%  else if( ISNUMPAR(0) )
  if( ISNUMPAR(0) )
  {
    QTextInlineObject_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=QRectF rect() const

$prototypeV2=qreal width() const

$prototypeV2=qreal ascent() const

$prototypeV2=qreal descent() const

$prototypeV2=qreal height() const

$prototypeV2=Qt::LayoutDirection textDirection() const

$prototype=void setWidth(qreal w)
$method=|void|setWidth|qreal

$prototype=void setAscent(qreal a)
$method=|void|setAscent|qreal

$prototype=void setDescent(qreal d)
$method=|void|setDescent|qreal

$prototypeV2=int textPosition() const

$prototypeV2=int formatIndex() const

$prototypeV2=QTextFormat format() const

$extraMethods

#pragma ENDDUMP
