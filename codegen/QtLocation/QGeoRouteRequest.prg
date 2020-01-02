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

$prototype=explicit QGeoRouteRequest(const QList<QGeoCoordinate> &waypoints = QList<QGeoCoordinate>())
void QGeoRouteRequest_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QList<QGeoCoordinate> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << *(QGeoCoordinate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QGeoRouteRequest * o = new QGeoRouteRequest ( par1 );
  _qt5xhb_returnNewObject( o, true );
#endif
}

$prototype=QGeoRouteRequest(const QGeoCoordinate &origin, const QGeoCoordinate &destination)
$internalConstructor=|new2|const QGeoCoordinate &,const QGeoCoordinate &

$prototype=QGeoRouteRequest(const QGeoRouteRequest &other)
$internalConstructor=|new3|const QGeoRouteRequest &

//[1]explicit QGeoRouteRequest(const QList<QGeoCoordinate> &waypoints = QList<QGeoCoordinate>())
//[2]QGeoRouteRequest(const QGeoCoordinate &origin, const QGeoCoordinate &destination)
//[3]QGeoRouteRequest(const QGeoRouteRequest &other)

HB_FUNC_STATIC( QGEOROUTEREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISARRAY(1)||ISNIL(1)) )
  {
    QGeoRouteRequest_new1();
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQGEOCOORDINATE(2) )
  {
    QGeoRouteRequest_new2();
  }
  else if( ISNUMPAR(1) && ISQGEOROUTEREQUEST(1) )
  {
    QGeoRouteRequest_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setWaypoints(const QList<QGeoCoordinate> &waypoints)
$method=|void|setWaypoints|const QList<QGeoCoordinate> &

$prototype=QList<QGeoCoordinate> waypoints() const
$method=|QList<QGeoCoordinate>|waypoints|

$prototype=void setExcludeAreas(const QList<QGeoRectangle> &areas)
$method=|void|setExcludeAreas|const QList<QGeoRectangle> &

$prototype=QList<QGeoRectangle> excludeAreas() const
$method=|QList<QGeoRectangle>|excludeAreas|

$prototype=void setNumberAlternativeRoutes(int alternatives)
$method=|void|setNumberAlternativeRoutes|int

$prototype=int numberAlternativeRoutes() const
$method=|int|numberAlternativeRoutes|

$prototype=void setTravelModes(TravelModes travelModes)
$method=|void|setTravelModes|QGeoRouteRequest::TravelModes

$prototype=TravelModes travelModes() const
$method=|QGeoRouteRequest::TravelModes|travelModes|

$prototype=void setFeatureWeight(FeatureType featureType, FeatureWeight featureWeight)
$method=|void|setFeatureWeight|QGeoRouteRequest::FeatureType,QGeoRouteRequest::FeatureWeight

$prototype=FeatureWeight featureWeight(FeatureType featureType) const
$method=|QGeoRouteRequest::FeatureWeight|featureWeight|QGeoRouteRequest::FeatureType

$prototype=QList<FeatureType> featureTypes() const
$method=|QList<QGeoRouteRequest::FeatureType>|featureTypes|

$prototype=void setRouteOptimization(RouteOptimizations optimization)
$method=|void|setRouteOptimization|QGeoRouteRequest::RouteOptimizations

$prototype=RouteOptimizations routeOptimization() const
$method=|QGeoRouteRequest::RouteOptimizations|routeOptimization|

$prototype=void setSegmentDetail(SegmentDetail segmentDetail)
$method=|void|setSegmentDetail|QGeoRouteRequest::SegmentDetail

$prototype=SegmentDetail segmentDetail() const
$method=|QGeoRouteRequest::SegmentDetail|segmentDetail|

$prototype=void setManeuverDetail(ManeuverDetail maneuverDetail)
$method=|void|setManeuverDetail|QGeoRouteRequest::ManeuverDetail

$prototype=ManeuverDetail maneuverDetail() const
$method=|QGeoRouteRequest::ManeuverDetail|maneuverDetail|

$extraMethods

#pragma ENDDUMP
