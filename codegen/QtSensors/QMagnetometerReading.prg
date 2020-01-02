%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=qreal x() const
$method=|qreal|x|

$prototype=void setX(qreal x)
$method=|void|setX|qreal

$prototype=qreal y() const
$method=|qreal|y|

$prototype=void setY(qreal y)
$method=|void|setY|qreal

$prototype=qreal z() const
$method=|qreal|z|

$prototype=void setZ(qreal z)
$method=|void|setZ|qreal

$prototype=qreal calibrationLevel() const
$method=|qreal|calibrationLevel|

$prototype=void setCalibrationLevel(qreal calibrationLevel)
$method=|void|setCalibrationLevel|qreal

#pragma ENDDUMP
