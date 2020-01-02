%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

#include <QtPositioning/QGeoRectangle>
#include <QtLocation/QGeoRouteSegment>

$prototype=QGeoRoute()
$internalConstructor=|new1|

$prototype=QGeoRoute(const QGeoRoute &other)
$internalConstructor=|new2|const QGeoRoute &

//[1]QGeoRoute()
//[2]QGeoRoute(const QGeoRoute &other)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setRouteId(const QString &id)
$method=|void|setRouteId|const QString &

$prototype=QString routeId() const
$method=|QString|routeId|

$prototype=void setRequest(const QGeoRouteRequest &request)
$method=|void|setRequest|const QGeoRouteRequest &

$prototype=QGeoRouteRequest request() const
$method=|QGeoRouteRequest|request|

$prototype=void setBounds(const QGeoRectangle &bounds)
$method=|void|setBounds|const QGeoRectangle &

$prototype=QGeoRectangle bounds() const
$method=|QGeoRectangle|bounds|

$prototype=void setFirstRouteSegment(const QGeoRouteSegment &routeSegment)
$method=|void|setFirstRouteSegment|const QGeoRouteSegment &

$prototype=QGeoRouteSegment firstRouteSegment() const
$method=|QGeoRouteSegment|firstRouteSegment|

$prototype=void setTravelTime(int secs)
$method=|void|setTravelTime|int

$prototype=int travelTime() const
$method=|int|travelTime|

$prototype=void setDistance(qreal distance)
$method=|void|setDistance|qreal

$prototype=qreal distance() const
$method=|qreal|distance|

$prototype=void setTravelMode(QGeoRouteRequest::TravelMode mode)
$method=|void|setTravelMode|QGeoRouteRequest::TravelMode

$prototype=QGeoRouteRequest::TravelMode travelMode() const
$method=|QGeoRouteRequest::TravelMode|travelMode|

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
