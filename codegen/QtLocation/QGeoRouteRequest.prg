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
  auto obj = new QGeoRouteRequest( par1 );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

$prototype=QGeoRouteRequest(const QGeoCoordinate &origin, const QGeoCoordinate &destination)
$internalConstructor=|new2|const QGeoCoordinate &,const QGeoCoordinate &

$prototype=QGeoRouteRequest(const QGeoRouteRequest &other)
$internalConstructor=|new3|const QGeoRouteRequest &

/*
[1]explicit QGeoRouteRequest(const QList<QGeoCoordinate> &waypoints = QList<QGeoCoordinate>())
[2]QGeoRouteRequest(const QGeoCoordinate &origin, const QGeoCoordinate &destination)
[3]QGeoRouteRequest(const QGeoRouteRequest &other)
*/

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
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void setWaypoints( const QList<QGeoCoordinate> & waypoints )

$prototypeV2=QList<QGeoCoordinate> waypoints() const

$prototypeV2=void setExcludeAreas( const QList<QGeoRectangle> & areas )

$prototypeV2=QList<QGeoRectangle> excludeAreas() const

$prototypeV2=void setNumberAlternativeRoutes( int alternatives )

$prototypeV2=int numberAlternativeRoutes() const

$prototypeV2=void setTravelModes( QGeoRouteRequest::TravelModes travelModes )

$prototypeV2=QGeoRouteRequest::TravelModes travelModes() const

$prototypeV2=void setFeatureWeight( QGeoRouteRequest::FeatureType featureType, QGeoRouteRequest::FeatureWeight featureWeight)

$prototypeV2=QGeoRouteRequest::FeatureWeight featureWeight( QGeoRouteRequest::FeatureType featureType ) const

$prototypeV2=QList<QGeoRouteRequest::FeatureType> featureTypes() const

$prototypeV2=void setRouteOptimization( QGeoRouteRequest::RouteOptimizations optimization )

$prototypeV2=QGeoRouteRequest::RouteOptimizations routeOptimization() const

$prototypeV2=void setSegmentDetail( QGeoRouteRequest::SegmentDetail segmentDetail )

$prototypeV2=QGeoRouteRequest::SegmentDetail segmentDetail() const

$prototypeV2=void setManeuverDetail( QGeoRouteRequest::ManeuverDetail maneuverDetail )

$prototypeV2=QGeoRouteRequest::ManeuverDetail maneuverDetail() const

$extraMethods

#pragma ENDDUMP
