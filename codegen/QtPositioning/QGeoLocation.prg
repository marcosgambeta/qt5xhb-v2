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

#include <QtPositioning/QGeoAddress>
#include <QtPositioning/QGeoCoordinate>
#include <QtPositioning/QGeoRectangle>

$prototype=QGeoLocation()
$internalConstructor=|new1|

$prototype=QGeoLocation(const QGeoLocation &other)
$internalConstructor=|new2|const QGeoLocation &

/*
[1]QGeoLocation()
[2]QGeoLocation(const QGeoLocation &other)
*/

HB_FUNC_STATIC( QGEOLOCATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoLocation_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOLOCATION(1) )
  {
    QGeoLocation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QGeoAddress address() const

$prototype=void setAddress(const QGeoAddress &address)
$method=|void|setAddress|const QGeoAddress &

$prototypeV2=QGeoCoordinate coordinate() const

$prototype=void setCoordinate(const QGeoCoordinate &position)
$method=|void|setCoordinate|const QGeoCoordinate &

$prototypeV2=QGeoRectangle boundingBox() const

$prototype=void setBoundingBox(const QGeoRectangle &box)
$method=|void|setBoundingBox|const QGeoRectangle &

$prototypeV2=bool isEmpty() const

$extraMethods

#pragma ENDDUMP
