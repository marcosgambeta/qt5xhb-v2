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

$beginClassFrom=QInputEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
$internalConstructor=|new1|QContextMenuEvent::Reason,const QPoint &,const QPoint &,Qt::KeyboardModifiers

$prototype=QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
$internalConstructor=|new2|QContextMenuEvent::Reason,const QPoint &,const QPoint &

$prototype=QContextMenuEvent ( Reason reason, const QPoint & pos )
$internalConstructor=|new3|QContextMenuEvent::Reason,const QPoint &

/*
[1]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
[2]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
[3]QContextMenuEvent ( Reason reason, const QPoint & pos )
*/

HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) && ISNUM(4) )
  {
    QContextMenuEvent_new1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) )
  {
    QContextMenuEvent_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINT(2) )
  {
    QContextMenuEvent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=const QPoint & globalPos () const
$method=|const QPoint &|globalPos|

$prototypeV2=int globalX() const

$prototypeV2=int globalY() const

$prototype=const QPoint & pos () const
$method=|const QPoint &|pos|

$prototypeV2=QContextMenuEvent::Reason reason() const

$prototypeV2=int x() const

$prototypeV2=int y() const

#pragma ENDDUMP
