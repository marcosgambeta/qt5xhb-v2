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

$prototype=QNativeGestureEvent(Qt::NativeGestureType type, const QPointF &localPos, const QPointF &windowPos,const QPointF &screenPos, qreal value, ulong sequenceId, quint64 intArgument)
$constructor=|new|Qt::NativeGestureType,const QPointF &,const QPointF &,const QPointF &,qreal,ulong,quint64

$deleteMethod

$prototypeV2=Qt::NativeGestureType gestureType() const

$prototypeV2=qreal value() const

$prototypeV2=const QPoint pos() const

$prototypeV2=const QPoint globalPos() const

$prototypeV2=const QPointF & localPos() const

$prototypeV2=const QPointF & windowPos() const

$prototypeV2=const QPointF & screenPos() const

#pragma ENDDUMP
