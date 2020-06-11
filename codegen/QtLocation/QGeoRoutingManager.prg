%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation
$added=5,4,0

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

$prototypeV2=QString managerName() const

$prototypeV2=int managerVersion() const

$prototype=QGeoRouteReply *calculateRoute(const QGeoRouteRequest &request)
$method=|QGeoRouteReply *|calculateRoute|const QGeoRouteRequest &

$prototype=QGeoRouteReply *updateRoute(const QGeoRoute &route, const QGeoCoordinate &position)
$method=|QGeoRouteReply *|updateRoute|const QGeoRoute &,const QGeoCoordinate &

$prototype=QGeoRouteRequest::TravelModes supportedTravelModes() const
$method=|QGeoRouteRequest::TravelModes|supportedTravelModes|

$prototype=QGeoRouteRequest::FeatureTypes supportedFeatureTypes() const
$method=|QGeoRouteRequest::FeatureTypes|supportedFeatureTypes|

$prototype=QGeoRouteRequest::FeatureWeights supportedFeatureWeights() const
$method=|QGeoRouteRequest::FeatureWeights|supportedFeatureWeights|

$prototype=QGeoRouteRequest::RouteOptimizations supportedRouteOptimizations() const
$method=|QGeoRouteRequest::RouteOptimizations|supportedRouteOptimizations|

$prototype=QGeoRouteRequest::SegmentDetails supportedSegmentDetails() const
$method=|QGeoRouteRequest::SegmentDetails|supportedSegmentDetails|

$prototype=QGeoRouteRequest::ManeuverDetails supportedManeuverDetails() const
$method=|QGeoRouteRequest::ManeuverDetails|supportedManeuverDetails|

$prototype=void setLocale(const QLocale &locale)
$method=|void|setLocale|const QLocale &

$prototypeV2=QLocale locale() const

$prototype=void setMeasurementSystem(QLocale::MeasurementSystem system)
$method=|void|setMeasurementSystem|QLocale::MeasurementSystem

$prototypeV2=QLocale::MeasurementSystem measurementSystem() const

%%
%% SIGNALS
%%

$prototype=void finished( QGeoRouteReply * reply )
$signalMethod=|void|finished|QGeoRouteReply *

$prototype=void error( QGeoRouteReply * reply, QGeoRouteReply::Error error, QString errorString = QString() )
$signalMethod=|void|error|QGeoRouteReply *,QGeoRouteReply::Error,QString

#pragma ENDDUMP
