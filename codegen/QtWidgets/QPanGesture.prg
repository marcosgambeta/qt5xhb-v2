%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGesture

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=qreal acceleration() const

$prototypeV2=QPointF delta() const

$prototypeV2=QPointF lastOffset() const

$prototypeV2=QPointF offset() const

$prototype=void setAcceleration(qreal value)
$method=|void|setAcceleration|qreal

$prototype=void setLastOffset(const QPointF & value)
$method=|void|setLastOffset|const QPointF &

$prototype=void setOffset(const QPointF & value)
$method=|void|setOffset|const QPointF &

#pragma ENDDUMP
