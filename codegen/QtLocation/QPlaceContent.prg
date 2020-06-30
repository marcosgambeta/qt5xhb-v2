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

#include <QtLocation/QPlaceSupplier>
#include <QtLocation/QPlaceUser>

$prototype=QPlaceContent()
$internalConstructor=|new1|

$prototype=QPlaceContent(const QPlaceContent &other)
$internalConstructor=|new2|const QPlaceContent &

/*
[1]QPlaceContent()
[2]QPlaceContent(const QPlaceContent &other)
*/

HB_FUNC_STATIC( QPLACECONTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContent_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceContent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QPlaceContent::Type type() const

$prototypeV2=QPlaceSupplier supplier() const

$prototypeV2=void setSupplier( const QPlaceSupplier & supplier )

$prototypeV2=QPlaceUser user() const

$prototypeV2=void setUser( const QPlaceUser & user )

$prototypeV2=QString attribution() const

$prototypeV2=void setAttribution( const QString & attribution )

$extraMethods

#pragma ENDDUMP
