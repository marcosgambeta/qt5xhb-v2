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

$beginClassFrom=QGraphicsSceneEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=Qt::MouseButton button() const

$prototype=QPointF buttonDownPos ( Qt::MouseButton button ) const
$method=|QPointF|buttonDownPos|Qt::MouseButton

$prototype=QPointF buttonDownScenePos ( Qt::MouseButton button ) const
$method=|QPointF|buttonDownScenePos|Qt::MouseButton

$prototype=QPoint buttonDownScreenPos ( Qt::MouseButton button ) const
$method=|QPoint|buttonDownScreenPos|Qt::MouseButton

$prototypeV2=Qt::MouseButtons buttons() const

$prototypeV2=QPointF lastPos() const

$prototypeV2=QPointF lastScenePos() const

$prototypeV2=QPoint lastScreenPos() const

$prototypeV2=Qt::KeyboardModifiers modifiers() const

$prototypeV2=QPointF pos() const

$prototypeV2=QPointF scenePos() const

$prototypeV2=QPoint screenPos() const

#pragma ENDDUMP
