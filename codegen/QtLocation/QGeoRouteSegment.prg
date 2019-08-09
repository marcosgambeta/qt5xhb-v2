%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

//[1]QGeoRouteSegment()
//[2]QGeoRouteSegment(const QGeoRouteSegment &other)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void setNextRouteSegment(const QGeoRouteSegment &routeSegment)
$method=|void|setNextRouteSegment|const QGeoRouteSegment &

$prototype=QGeoRouteSegment nextRouteSegment() const
$method=|QGeoRouteSegment|nextRouteSegment|

$prototype=void setTravelTime(int secs)
$method=|void|setTravelTime|int

$prototype=int travelTime() const
$method=|int|travelTime|

$prototype=void setDistance(qreal distance)
$method=|void|setDistance|qreal

$prototype=qreal distance() const
$method=|qreal|distance|

$prototype=void setPath(const QList<QGeoCoordinate> &path)
$method=|void|setPath|const QList<QGeoCoordinate> &

$prototype=QList<QGeoCoordinate> path() const
$method=|QList<QGeoCoordinate>|path|

$prototype=void setManeuver(const QGeoManeuver &maneuver)
$method=|void|setManeuver|const QGeoManeuver &

$prototype=QGeoManeuver maneuver() const
$method=|QGeoManeuver|maneuver|

$prototype=bool QGeoRouteSegment::isLegLastSegment() const
$method=5,12,0|bool|isLegLastSegment|

$extraMethods

#pragma ENDDUMP
