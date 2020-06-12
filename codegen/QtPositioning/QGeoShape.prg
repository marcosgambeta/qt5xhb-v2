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

$prototype=QGeoShape()
$internalConstructor=|new1|

$prototype=QGeoShape(const QGeoShape &other)
$internalConstructor=|new2|const QGeoShape &

/*
[1]QGeoShape()
[2]QGeoShape(const QGeoShape &other)
*/

HB_FUNC_STATIC( QGEOSHAPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoShape_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    QGeoShape_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QGeoShape::ShapeType type() const

$prototypeV2=bool isValid() const

$prototypeV2=bool isEmpty() const

$prototype=bool contains(const QGeoCoordinate &coordinate) const
$method=|bool|contains|const QGeoCoordinate &

$extraMethods

#pragma ENDDUMP
