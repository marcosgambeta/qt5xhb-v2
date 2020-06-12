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

$beginClassFrom=QSensorReading

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=qreal x() const

$prototype=void setX(qreal x)
$method=|void|setX|qreal

$prototypeV2=qreal y() const

$prototype=void setY(qreal y)
$method=|void|setY|qreal

$prototypeV2=qreal z() const

$prototype=void setZ(qreal z)
$method=|void|setZ|qreal

$prototypeV2=qreal calibrationLevel() const

$prototype=void setCalibrationLevel(qreal calibrationLevel)
$method=|void|setCalibrationLevel|qreal

#pragma ENDDUMP
