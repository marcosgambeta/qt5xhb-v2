%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=LightLevel lightLevel() const
$method=|QAmbientLightReading::LightLevel|lightLevel|

$prototype=void setLightLevel(LightLevel lightLevel)
$method=|void|setLightLevel|QAmbientLightReading::LightLevel

#pragma ENDDUMP
