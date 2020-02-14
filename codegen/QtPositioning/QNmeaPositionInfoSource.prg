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

$beginClassFrom=QGeoPositionInfoSource

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QIODevice>

$prototype=QNmeaPositionInfoSource(UpdateMode updateMode, QObject *parent = nullptr)
$constructor=|new|QNmeaPositionInfoSource::UpdateMode,QObject *=nullptr

$deleteMethod

$prototype=UpdateMode updateMode() const
$method=|QNmeaPositionInfoSource::UpdateMode|updateMode|

$prototype=void setDevice(QIODevice *source)
$method=|void|setDevice|QIODevice *

$prototype=QIODevice *device() const
$method=|QIODevice *|device|

$prototype=void setUpdateInterval(int msec)
$method=|void|setUpdateInterval|int

$prototype=QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const
$method=|QGeoPositionInfo|lastKnownPosition|bool=false

$prototype=PositioningMethods supportedPositioningMethods() const
$method=|QGeoPositionInfoSource::PositioningMethods|supportedPositioningMethods|

$prototype=int minimumUpdateInterval() const
$method=|int|minimumUpdateInterval|

$prototype=Error error() const
$method=|QGeoPositionInfoSource::Error|error|

$prototype=void startUpdates()
$method=|void|startUpdates|

$prototype=void stopUpdates()
$method=|void|stopUpdates|

$prototype=void requestUpdate(int timeout = 0)
$method=|void|requestUpdate|int=0

#pragma ENDDUMP
