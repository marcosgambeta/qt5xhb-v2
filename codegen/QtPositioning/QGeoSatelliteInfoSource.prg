%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QString sourceName() const
$method=|QString|sourceName|

$prototype=virtual void setUpdateInterval(int msec)
$virtualMethod=|void|setUpdateInterval|int

$prototype=int updateInterval() const
$method=|int|updateInterval|

$prototype=virtual int minimumUpdateInterval() const = 0
$virtualMethod=|int|minimumUpdateInterval|

$prototype=virtual Error error() const = 0
$virtualMethod=|QGeoSatelliteInfoSource::Error|error|

$prototype=virtual void startUpdates() = 0
$virtualMethod=|void|startUpdates|

$prototype=virtual void stopUpdates() = 0
$virtualMethod=|void|stopUpdates|

$prototype=virtual void requestUpdate(int timeout = 0) = 0
$virtualMethod=|void|requestUpdate|int=0

$prototype=static QGeoSatelliteInfoSource *createDefaultSource(QObject *parent)
$staticMethod=|QGeoSatelliteInfoSource *|createDefaultSource|QObject *

$prototype=static QGeoSatelliteInfoSource *createSource(const QString &sourceName, QObject *parent)
$staticMethod=|QGeoSatelliteInfoSource *|createSource|const QString &,QObject *

$prototype=static QStringList availableSources()
$staticMethod=|QStringList|availableSources|

%%
%% SIGNALS
%%

$prototype=void satellitesInViewUpdated( const QList<QGeoSatelliteInfo> & satellites )
$signalMethod=|void|satellitesInViewUpdated|const QList<QGeoSatelliteInfo> &

$prototype=void satellitesInUseUpdated( const QList<QGeoSatelliteInfo> & satellites )
$signalMethod=|void|satellitesInUseUpdated|const QList<QGeoSatelliteInfo> &

$prototype=void requestTimeout()
$signalMethod=|void|requestTimeout|

$prototype=void error( QGeoSatelliteInfoSource::Error error )
$signalMethod=|void|error,error,QOverload<QGeoSatelliteInfoSource::Error>|QGeoSatelliteInfoSource::Error

#pragma ENDDUMP
