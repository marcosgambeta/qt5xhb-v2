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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGeoCoordinate()
$internalConstructor=|new1|

$prototype=QGeoCoordinate(double latitude, double longitude)
$internalConstructor=|new2|double,double

$prototype=QGeoCoordinate(double latitude, double longitude, double altitude)
$internalConstructor=|new3|double,double,double

$prototype=QGeoCoordinate(const QGeoCoordinate &other)
$internalConstructor=|new4|const QGeoCoordinate &

/*
[1]QGeoCoordinate()
[2]QGeoCoordinate(double latitude, double longitude)
[3]QGeoCoordinate(double latitude, double longitude, double altitude)
[4]QGeoCoordinate(const QGeoCoordinate &other)
*/

HB_FUNC_STATIC( QGEOCOORDINATE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoCoordinate_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGeoCoordinate_new2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QGeoCoordinate_new3();
  }
  else if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
  {
    QGeoCoordinate_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=CoordinateType type() const
$method=|QGeoCoordinate::CoordinateType|type|

$prototype=void setLatitude(double latitude)
$method=|void|setLatitude|double

$prototype=double latitude() const
$method=|double|latitude|

$prototype=void setLongitude(double longitude)
$method=|void|setLongitude|double

$prototype=double longitude() const
$method=|double|longitude|

$prototype=void setAltitude(double altitude)
$method=|void|setAltitude|double

$prototype=double altitude() const
$method=|double|altitude|

$prototype=qreal distanceTo(const QGeoCoordinate &other) const
$method=|qreal|distanceTo|const QGeoCoordinate &

$prototype=qreal azimuthTo(const QGeoCoordinate &other) const
$method=|qreal|azimuthTo|const QGeoCoordinate &

$prototype=QGeoCoordinate atDistanceAndAzimuth(qreal distance, qreal azimuth, qreal distanceUp = 0.0) const
$method=|QGeoCoordinate|atDistanceAndAzimuth|qreal,qreal,qreal=0.0

$prototype=QString toString(CoordinateFormat format = DegreesMinutesSecondsWithHemisphere) const
$method=|QString|toString|QGeoCoordinate::CoordinateFormat=QGeoCoordinate::DegreesMinutesSecondsWithHemisphere

$extraMethods

#pragma ENDDUMP
