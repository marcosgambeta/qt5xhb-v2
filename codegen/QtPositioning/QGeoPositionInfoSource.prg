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

$prototype=int updateInterval() const
$method=|int|updateInterval|

$prototype=virtual void setPreferredPositioningMethods(PositioningMethods methods)
$virtualMethod=|void|setPreferredPositioningMethods|QGeoPositionInfoSource::PositioningMethods

$prototype=PositioningMethods preferredPositioningMethods() const
$method=|QGeoPositionInfoSource::PositioningMethods|preferredPositioningMethods|

$prototype=virtual QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const = 0
$virtualMethod=|QGeoPositionInfo|lastKnownPosition|bool=false

$prototype=virtual PositioningMethods supportedPositioningMethods() const = 0
$virtualMethod=|QGeoPositionInfoSource::PositioningMethods|supportedPositioningMethods|

$prototype=virtual int minimumUpdateInterval() const = 0
$virtualMethod=|int|minimumUpdateInterval|

$prototype=QString sourceName() const
$method=|QString|sourceName|

$prototype=virtual Error error() const = 0
$virtualMethod=|QGeoPositionInfoSource::Error|error|

$prototype=virtual void startUpdates() = 0
$virtualMethod=|void|startUpdates|

$prototype=virtual void stopUpdates() = 0
$virtualMethod=|void|stopUpdates|

$prototype=virtual void requestUpdate(int timeout = 0) = 0
$virtualMethod=|void|requestUpdate|int=0

$prototype=static QGeoPositionInfoSource *createDefaultSource(QObject *parent)
$staticMethod=|QGeoPositionInfoSource *|createDefaultSource|QObject *

$prototype=static QGeoPositionInfoSource *createSource(const QString &sourceName, QObject *parent)
$staticMethod=|QGeoPositionInfoSource *|createSource|const QString &,QObject *

$prototype=static QStringList availableSources()
$staticMethod=|QStringList|availableSources|

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
