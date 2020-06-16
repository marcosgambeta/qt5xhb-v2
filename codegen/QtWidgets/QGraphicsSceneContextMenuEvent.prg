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

$prototypeV2=Qt::KeyboardModifiers modifiers() const

$prototypeV2=QPointF pos() const

$prototypeV2=QGraphicsSceneContextMenuEvent::Reason reason() const

$prototypeV2=QPointF scenePos() const

$prototypeV2=QPoint screenPos() const

#pragma ENDDUMP
