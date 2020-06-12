%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensorReading

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=QTapReading::TapDirection tapDirection() const

$prototype=void setTapDirection(TapDirection tapDirection)
$method=|void|setTapDirection|QTapReading::TapDirection

$prototypeV2=bool isDoubleTap() const

$prototype=void setDoubleTap(bool doubleTap)
$method=|void|setDoubleTap|bool

#pragma ENDDUMP
