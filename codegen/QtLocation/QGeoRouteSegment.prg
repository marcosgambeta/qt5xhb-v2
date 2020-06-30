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

#include <QtLocation/QGeoManeuver>
#include <QtPositioning/QGeoCoordinate>

$prototype=QGeoRouteSegment()
$internalConstructor=|new1|

$prototype=QGeoRouteSegment(const QGeoRouteSegment &other)
$internalConstructor=|new2|const QGeoRouteSegment &

/*
[1]QGeoRouteSegment()
[2]QGeoRouteSegment(const QGeoRouteSegment &other)
*/

HB_FUNC_STATIC( QGEOROUTESEGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoRouteSegment_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOROUTESEGMENT(1) )
  {
    QGeoRouteSegment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=void setNextRouteSegment( const QGeoRouteSegment & routeSegment )

$prototypeV2=QGeoRouteSegment nextRouteSegment() const

$prototypeV2=void setTravelTime( int secs )

$prototypeV2=int travelTime() const

$prototypeV2=void setDistance( qreal distance )

$prototypeV2=qreal distance() const

$prototypeV2=void setPath( const QList<QGeoCoordinate> & path )

$prototypeV2=QList<QGeoCoordinate> path() const

$prototypeV2=void setManeuver( const QGeoManeuver & maneuver )

$prototypeV2=QGeoManeuver maneuver() const

$prototypeV2=5,12,0|bool QGeoRouteSegment::isLegLastSegment() const

$extraMethods

#pragma ENDDUMP
