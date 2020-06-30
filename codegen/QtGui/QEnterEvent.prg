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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QEnterEvent(const QPointF &localPos, const QPointF &windowPos, const QPointF &screenPos)
$constructor=|new|const QPointF &,const QPointF &,const QPointF &

$deleteMethod

$prototypeV2=QPoint pos() const

$prototypeV2=QPoint globalPos() const

$prototypeV2=int x() const

$prototypeV2=int y() const

$prototypeV2=int globalX() const

$prototypeV2=int globalY() const

$prototypeV2=const QPointF & localPos() const

$prototypeV2=const QPointF & windowPos() const

$prototypeV2=const QPointF & screenPos() const

#pragma ENDDUMP
