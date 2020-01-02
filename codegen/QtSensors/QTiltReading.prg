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

$addRequests

$beginClassFrom=QSensorReading

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=qreal yRotation() const
$method=|qreal|yRotation|

$prototype=void setYRotation(qreal y)
$method=|void|setYRotation|qreal

$prototype=qreal xRotation() const
$method=|qreal|xRotation|

$prototype=void setXRotation(qreal x)
$method=|void|setXRotation|qreal

#pragma ENDDUMP
