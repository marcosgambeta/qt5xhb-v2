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

$prototype=QGraphicsSceneMoveEvent ()
$constructor=|new|

$deleteMethod

$prototypeV2=QSizeF newSize() const

$prototypeV2=QSizeF oldSize() const

#pragma ENDDUMP
