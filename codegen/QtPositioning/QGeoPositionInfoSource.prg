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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

$deleteMethod

$prototype=virtual void setUpdateInterval(int msec)
$virtualMethod=|void|setUpdateInterval|int

$prototypeV2=int updateInterval() const

$prototype=virtual void setPreferredPositioningMethods(PositioningMethods methods)
$virtualMethod=|void|setPreferredPositioningMethods|QGeoPositionInfoSource::PositioningMethods

$prototypeV2=QGeoPositionInfoSource::PositioningMethods preferredPositioningMethods() const

$prototype=virtual QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const = 0
$virtualMethod=|QGeoPositionInfo|lastKnownPosition|bool=false

$prototypeV2=virtual QGeoPositionInfoSource::PositioningMethods supportedPositioningMethods() const = 0

$prototypeV2=virtual int minimumUpdateInterval() const = 0

$prototypeV2=QString sourceName() const

$prototypeV2=virtual QGeoPositionInfoSource::Error error() const = 0

$prototypeV2=virtual void startUpdates() = 0

$prototypeV2=virtual void stopUpdates() = 0

$prototype=virtual void requestUpdate(int timeout = 0) = 0
$virtualMethod=|void|requestUpdate|int=0

$prototype=static QGeoPositionInfoSource *createDefaultSource(QObject *parent)
$staticMethod=|QGeoPositionInfoSource *|createDefaultSource|QObject *

$prototype=static QGeoPositionInfoSource *createSource(const QString &sourceName, QObject *parent)
$staticMethod=|QGeoPositionInfoSource *|createSource|const QString &,QObject *

$prototypeV2=static QStringList availableSources()

%%
%% SIGNALS
%%

$prototype=void positionUpdated( const QGeoPositionInfo & update )
$signalMethod=|void|positionUpdated|const QGeoPositionInfo &

$prototype=void updateTimeout()
$signalMethod=|void|updateTimeout|

$prototype=void error( QGeoPositionInfoSource::Error error )
$signalMethod=|void|error,error,QOverload<QGeoPositionInfoSource::Error>|QGeoPositionInfoSource::Error

#pragma ENDDUMP
