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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtLocation/QGeoRouteSegment>
#include <QtPositioning/QGeoRectangle>

$prototype=QGeoRoute()
$internalConstructor=|new1|

$prototype=QGeoRoute(const QGeoRoute &other)
$internalConstructor=|new2|const QGeoRoute &

/*
[1]QGeoRoute()
[2]QGeoRoute(const QGeoRoute &other)
*/

HB_FUNC_STATIC( QGEOROUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoRoute_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOMANEUVER(1) )
  {
    QGeoRoute_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setRouteId(const QString &id)
$method=|void|setRouteId|const QString &

$prototypeV2=QString routeId() const

$prototype=void setRequest(const QGeoRouteRequest &request)
$method=|void|setRequest|const QGeoRouteRequest &

$prototypeV2=QGeoRouteRequest request() const

$prototype=void setBounds(const QGeoRectangle &bounds)
$method=|void|setBounds|const QGeoRectangle &

$prototypeV2=QGeoRectangle bounds() const

$prototype=void setFirstRouteSegment(const QGeoRouteSegment &routeSegment)
$method=|void|setFirstRouteSegment|const QGeoRouteSegment &

$prototypeV2=QGeoRouteSegment firstRouteSegment() const

$prototype=void setTravelTime(int secs)
$method=|void|setTravelTime|int

$prototypeV2=int travelTime() const

$prototype=void setDistance(qreal distance)
$method=|void|setDistance|qreal

$prototypeV2=qreal distance() const

$prototype=void setTravelMode(QGeoRouteRequest::TravelMode mode)
$method=|void|setTravelMode|QGeoRouteRequest::TravelMode

$prototypeV2=QGeoRouteRequest::TravelMode travelMode() const

$prototype=void setPath(const QList<QGeoCoordinate> &path)
$method=|void|setPath|const QList<QGeoCoordinate> &

$prototype=QList<QGeoCoordinate> path() const
$method=|QList<QGeoCoordinate>|path|

$prototype=QList<QGeoRouteLeg> QGeoRoute::routeLegs() const
%% TODO: $method=5,12,0|QList<QGeoRouteLeg>|routeLegs|

$prototype=void QGeoRoute::setRouteLegs(const QList<QGeoRouteLeg> &legs)
%% TODO: $method=5,12,0|void|setRouteLegs|const QList<QGeoRouteLeg> &

$extraMethods

#pragma ENDDUMP
