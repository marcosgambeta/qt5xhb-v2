%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPointF()
$internalConstructor=|new1|

$prototype=QPointF(const QPoint & point)
$internalConstructor=|new2|const QPoint &

$prototype=QPointF(qreal xpos, qreal ypos)
$internalConstructor=|new3|qreal,qreal

/*
[1]QPointF()
[2]QPointF(const QPoint & point)
[3]QPointF(qreal xpos, qreal ypos)
*/

HB_FUNC_STATIC( QPOINTF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPointF_new1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPointF_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPointF_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isNull() const

$prototypeV2=qreal manhattanLength() const

$prototypeV2=void setX( qreal x )

$prototypeV2=void setY( qreal y )

$prototypeV2=QPoint toPoint() const

$prototypeV2=qreal x() const

$prototypeV2=qreal y() const

$extraMethods

#pragma ENDDUMP
