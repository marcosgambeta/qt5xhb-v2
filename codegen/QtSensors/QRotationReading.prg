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

$prototype=qreal x() const
$method=|qreal|x|

$prototype=qreal y() const
$method=|qreal|y|

$prototype=qreal z() const
$method=|qreal|z|

$prototype=void setFromEuler(qreal x, qreal y, qreal z)
$method=|void|setFromEuler|qreal,qreal,qreal

#pragma ENDDUMP
