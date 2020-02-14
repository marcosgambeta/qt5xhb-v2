%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual QGeoPositionInfoSource *positionInfoSource(QObject *parent) = 0
$virtualMethod=|QGeoPositionInfoSource *|positionInfoSource|QObject *

$prototype=virtual QGeoSatelliteInfoSource *satelliteInfoSource(QObject *parent) = 0
$virtualMethod=|QGeoSatelliteInfoSource *|satelliteInfoSource|QObject *

$prototype=virtual QGeoAreaMonitorSource *areaMonitor(QObject *parent) = 0
$virtualMethod=|QGeoAreaMonitorSource *|areaMonitor|QObject *

$extraMethods

#pragma ENDDUMP
