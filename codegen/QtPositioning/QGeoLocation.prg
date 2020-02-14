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

//[1]QGeoLocation()
//[2]QGeoLocation(const QGeoLocation &other)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QGeoAddress address() const
$method=|QGeoAddress|address|

$prototype=void setAddress(const QGeoAddress &address)
$method=|void|setAddress|const QGeoAddress &

$prototype=QGeoCoordinate coordinate() const
$method=|QGeoCoordinate|coordinate|

$prototype=void setCoordinate(const QGeoCoordinate &position)
$method=|void|setCoordinate|const QGeoCoordinate &

$prototype=QGeoRectangle boundingBox() const
$method=|QGeoRectangle|boundingBox|

$prototype=void setBoundingBox(const QGeoRectangle &box)
$method=|void|setBoundingBox|const QGeoRectangle &

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
