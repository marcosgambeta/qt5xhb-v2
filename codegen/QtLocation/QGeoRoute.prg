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

$prototypeV2=void setRouteId( const QString & id )

$prototypeV2=QString routeId() const

$prototypeV2=void setRequest( const QGeoRouteRequest & request )

$prototypeV2=QGeoRouteRequest request() const

$prototypeV2=void setBounds( const QGeoRectangle & bounds )

$prototypeV2=QGeoRectangle bounds() const

$prototypeV2=void setFirstRouteSegment( const QGeoRouteSegment & routeSegment )

$prototypeV2=QGeoRouteSegment firstRouteSegment() const

$prototypeV2=void setTravelTime( int secs )

$prototypeV2=int travelTime() const

$prototypeV2=void setDistance( qreal distance )

$prototypeV2=qreal distance() const

$prototypeV2=void setTravelMode( QGeoRouteRequest::TravelMode mode )

$prototypeV2=QGeoRouteRequest::TravelMode travelMode() const

$prototypeV2=void setPath( const QList<QGeoCoordinate> & path )

$prototypeV2=QList<QGeoCoordinate> path() const

$prototype=QList<QGeoRouteLeg> QGeoRoute::routeLegs() const
%% TODO: $method=5,12,0|QList<QGeoRouteLeg>|routeLegs|

$prototype=void QGeoRoute::setRouteLegs(const QList<QGeoRouteLeg> &legs)
%% TODO: $method=5,12,0|void|setRouteLegs|const QList<QGeoRouteLeg> &

$extraMethods

#pragma ENDDUMP
