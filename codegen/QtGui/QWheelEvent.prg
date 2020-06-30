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

$prototype=QWheelEvent(const QPointF &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
$internalConstructor=|new1|const QPointF &,int,Qt::MouseButtons,Qt::KeyboardModifiers,Qt::Orientation=Qt::Vertical

$prototype=QWheelEvent(const QPointF &pos, const QPointF& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
$internalConstructor=|new2|const QPointF &,const QPointF &,int,Qt::MouseButtons,Qt::KeyboardModifiers,Qt::Orientation=Qt::Vertical

$prototype=QWheelEvent(const QPointF &pos, const QPointF& globalPos,QPoint pixelDelta, QPoint angleDelta, int qt4Delta, Qt::Orientation qt4Orientation,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
$internalConstructor=|new3|const QPointF &,const QPointF &,QPoint,QPoint,int,Qt::Orientation,Qt::MouseButtons,Qt::KeyboardModifiers

/*
[1]QWheelEvent(const QPointF &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical);
[2]QWheelEvent(const QPointF &pos, const QPointF& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical);
[3]QWheelEvent(const QPointF &pos, const QPointF& globalPos,QPoint pixelDelta, QPoint angleDelta, int qt4Delta, Qt::Orientation qt4Orientation,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers);
*/

HB_FUNC_STATIC( QWHEELEVENT_NEW )
{
  if( ISBETWEEN(4,5) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTNUM(5) )
  {
    QWheelEvent_new1();
  }
  else if( ISBETWEEN(5,6) && ISQPOINTF(1) && ISQPOINTF(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) )
  {
    QWheelEvent_new2();
  }
  else if( ISNUMPAR(8) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINT(3) && ISQPOINT(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) )
  {
    QWheelEvent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QPoint pixelDelta() const

$prototypeV2=QPoint angleDelta() const

$prototypeV2=int delta() const

$prototypeV2=Qt::Orientation orientation() const

$prototypeV2=QPoint pos() const

$prototypeV2=QPoint globalPos() const

$prototypeV2=int x() const

$prototypeV2=int y() const

$prototypeV2=int globalX() const

$prototypeV2=int globalY() const

$prototypeV2=const QPointF & posF() const

$prototypeV2=const QPointF & globalPosF() const

$prototypeV2=Qt::MouseButtons buttons() const

#pragma ENDDUMP
