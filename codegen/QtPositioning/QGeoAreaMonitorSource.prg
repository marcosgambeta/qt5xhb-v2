%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$deleteMethod

$prototype=virtual void setPositionInfoSource(QGeoPositionInfoSource *source)
$virtualMethod=|void|setPositionInfoSource|QGeoPositionInfoSource *

$prototype=virtual QGeoPositionInfoSource* positionInfoSource() const
$virtualMethod=|QGeoPositionInfoSource *|positionInfoSource|

$prototype=QString sourceName() const
$method=|QString|sourceName|

$prototype=virtual Error error() const = 0
$virtualMethod=|QGeoAreaMonitorSource::Error|error|

$prototype=virtual AreaMonitorFeatures supportedAreaMonitorFeatures() const = 0
$virtualMethod=|QGeoAreaMonitorSource::AreaMonitorFeatures|supportedAreaMonitorFeatures|

$prototype=virtual bool startMonitoring(const QGeoAreaMonitorInfo &monitor) = 0
$virtualMethod=|bool|startMonitoring|const QGeoAreaMonitorInfo &

$prototype=virtual bool stopMonitoring(const QGeoAreaMonitorInfo &monitor) = 0
$virtualMethod=|bool|stopMonitoring|const QGeoAreaMonitorInfo &

$prototype=virtual bool requestUpdate(const QGeoAreaMonitorInfo &monitor, const char *signal) = 0
$virtualMethod=|bool|requestUpdate|const QGeoAreaMonitorInfo &,const char *

$prototype=virtual QList<QGeoAreaMonitorInfo> activeMonitors() const = 0
$internalVirtualMethod=|QList<QGeoAreaMonitorInfo>|activeMonitors,activeMonitors1|

$prototype=virtual QList<QGeoAreaMonitorInfo> activeMonitors(const QGeoShape &lookupArea) const = 0
$internalVirtualMethod=|QList<QGeoAreaMonitorInfo>|activeMonitors,activeMonitors2|const QGeoShape &

//[1]virtual QList<QGeoAreaMonitorInfo> activeMonitors() const = 0
//[2]virtual QList<QGeoAreaMonitorInfo> activeMonitors(const QGeoShape &lookupArea) const = 0

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ACTIVEMONITORS )
{
  if( ISNUMPAR(0) )
  {
    QGeoAreaMonitorSource_activeMonitors1();
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    QGeoAreaMonitorSource_activeMonitors2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=activeMonitors

$prototype=static QGeoAreaMonitorSource *createDefaultSource(QObject *parent)
$staticMethod=|QGeoAreaMonitorSource *|createDefaultSource|QObject *

$prototype=static QGeoAreaMonitorSource *createSource(const QString& sourceName, QObject *parent)
$staticMethod=|QGeoAreaMonitorSource *|createSource|const QString &,QObject *

$prototype=static QStringList availableSources()
$staticMethod=|QStringList|availableSources|

%%
%% SIGNALS
%%

$prototype=void areaEntered( const QGeoAreaMonitorInfo & monitor, const QGeoPositionInfo & update )
$signalMethod=|void|areaEntered|const QGeoAreaMonitorInfo &,const QGeoPositionInfo &

$prototype=void areaExited( const QGeoAreaMonitorInfo & monitor, const QGeoPositionInfo & update )
$signalMethod=|void|areaExited|const QGeoAreaMonitorInfo &,const QGeoPositionInfo &

$prototype=void monitorExpired( const QGeoAreaMonitorInfo & monitor )
$signalMethod=|void|monitorExpired|const QGeoAreaMonitorInfo &

$prototype=void error( QGeoAreaMonitorSource::Error error )
$signalMethod=|void|error,error,QOverload<QGeoAreaMonitorSource::Error>|QGeoAreaMonitorSource::Error

#pragma ENDDUMP
