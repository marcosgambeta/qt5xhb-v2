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

$prototype=QMouseEvent(Type type, const QPointF & localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
$internalConstructor=|new1|QEvent::Type,const QPointF &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

$prototype=QMouseEvent(Type type, const QPointF & localPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
$internalConstructor=|new2|QEvent::Type,const QPointF &,const QPointF &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

$prototype=QMouseEvent(Type type, const QPointF & localPos, const QPointF & windowPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
$internalConstructor=|new3|QEvent::Type,const QPointF &,const QPointF &,const QPointF &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

/*
[1]QMouseEvent(Type type, const QPointF & localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
[2]QMouseEvent(Type type, const QPointF & localPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
[3]QMouseEvent(Type type, const QPointF & localPos, const QPointF & windowPos, const QPointF & screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/

HB_FUNC_STATIC( QMOUSEEVENT_NEW )
{
  if( ISNUMPAR(5) && ISNUM(1) && ISQPOINTF(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QMouseEvent_new1();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QMouseEvent_new2();
  }
  else if( ISNUMPAR(7) && ISNUM(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) )
  {
    QMouseEvent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=Qt::MouseButton button() const

$prototypeV2=Qt::MouseButtons buttons() const

$prototypeV2=int globalX() const

$prototypeV2=int globalY() const

$prototype=const QPointF & localPos() const
$method=|const QPointF &|localPos|

$prototype=const QPointF & screenPos() const
$method=|const QPointF &|screenPos|

$prototype=const QPointF & windowPos() const
$method=|const QPointF &|windowPos|

$prototypeV2=int x() const

$prototypeV2=int y() const

#pragma ENDDUMP
