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

$prototypeV2=QNmeaPositionInfoSource::UpdateMode updateMode() const

$prototype=void setDevice(QIODevice *source)
$method=|void|setDevice|QIODevice *

$prototypeV2=QIODevice * device() const

$prototype=void setUpdateInterval(int msec)
$method=|void|setUpdateInterval|int

$prototype=QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const
$method=|QGeoPositionInfo|lastKnownPosition|bool=false

$prototypeV2=QGeoPositionInfoSource::PositioningMethods supportedPositioningMethods() const

$prototypeV2=int minimumUpdateInterval() const

$prototypeV2=QGeoPositionInfoSource::Error error() const

$prototypeV2=void startUpdates()

$prototypeV2=void stopUpdates()

$prototype=void requestUpdate(int timeout = 0)
$method=|void|requestUpdate|int=0

#pragma ENDDUMP
