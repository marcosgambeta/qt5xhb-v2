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

$prototype=QTabletEvent(Type type, const QPointF & pos, const QPointF & globalPos, int device, int pointerType, qreal pressure, int xTilt, int yTilt, qreal tangentialPressure, qreal rotation, int z, Qt::KeyboardModifiers keyState, qint64 uniqueID)
$constructor=|new|QEvent::Type,const QPointF &,const QPointF &,int,int,qreal,int,int,qreal,qreal,int,Qt::KeyboardModifiers,qint64

$deleteMethod

$prototypeV2=QTabletEvent::TabletDevice device() const

$prototype=const QPoint globalPos() const
$method=|const QPoint|globalPos|

$prototype=const QPointF & globalPosF() const
$method=|const QPointF &|globalPosF|

$prototypeV2=int globalX() const

$prototypeV2=int globalY() const

$prototypeV2=qreal hiResGlobalX() const

$prototypeV2=qreal hiResGlobalY() const

$prototypeV2=QTabletEvent::PointerType pointerType() const

$prototype=const QPoint pos() const
$method=|const QPoint|pos|

$prototype=const QPointF & posF() const
$method=|const QPointF &|posF|

$prototypeV2=qreal pressure() const

$prototypeV2=qreal rotation() const

$prototypeV2=qreal tangentialPressure() const

$prototypeV2=qint64 uniqueId() const

$prototypeV2=int x() const

$prototypeV2=int xTilt() const

$prototypeV2=int y() const

$prototypeV2=int yTilt() const

$prototypeV2=int z() const

#pragma ENDDUMP
