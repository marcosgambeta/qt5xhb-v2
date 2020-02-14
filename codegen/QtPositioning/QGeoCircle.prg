%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGeoShape

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGeoCircle()
$internalConstructor=|new1|

$prototype=QGeoCircle(const QGeoCoordinate &center, qreal radius = -1.0)
$internalConstructor=|new2|const QGeoCoordinate &,qreal=-1.0

$prototype=QGeoCircle(const QGeoCircle &other)
$internalConstructor=|new3|const QGeoCircle &

$prototype=QGeoCircle(const QGeoShape &other)
$internalConstructor=|new4|const QGeoShape &

//[1]QGeoCircle()
//[2]QGeoCircle(const QGeoCoordinate &center, qreal radius = -1.0)
//[3]QGeoCircle(const QGeoCircle &other)
//[4]QGeoCircle(const QGeoShape &other)

HB_FUNC_STATIC( QGEOCIRCLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoCircle_new1();
  }
  else if( ISBETWEEN(1,2) && ISQGEOCOORDINATE(1) && ISOPTNUM(2) )
  {
    QGeoCircle_new2();
  }
  else if( ISNUMPAR(1) && ISQGEOCIRCLE(1) )
  {
    QGeoCircle_new3();
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    QGeoCircle_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setCenter(const QGeoCoordinate &center)
$method=|void|setCenter|const QGeoCoordinate &

$prototype=QGeoCoordinate center() const
$method=|QGeoCoordinate|center|

$prototype=void setRadius(qreal radius)
$method=|void|setRadius|qreal

$prototype=qreal radius() const
$method=|qreal|radius|

$prototype=void translate(double degreesLatitude, double degreesLongitude)
$method=|void|translate|double,double

$prototype=QGeoCircle translated(double degreesLatitude, double degreesLongitude) const
$method=|QGeoCircle|translated|double,double

#pragma ENDDUMP
