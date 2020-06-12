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

$prototypeV2=qreal azimuth() const

$prototype=void setAzimuth(qreal azimuth)
$method=|void|setAzimuth|qreal

$prototypeV2=qreal calibrationLevel() const

$prototype=void setCalibrationLevel(qreal calibrationLevel)
$method=|void|setCalibrationLevel|qreal

#pragma ENDDUMP
