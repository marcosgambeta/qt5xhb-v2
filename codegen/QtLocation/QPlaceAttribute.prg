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

$prototype=QPlaceAttribute()
$internalConstructor=|new1|

$prototype=QPlaceAttribute(const QPlaceAttribute &other)
$internalConstructor=|new2|const QPlaceAttribute &

/*
[1]QPlaceAttribute()
[2]QPlaceAttribute(const QPlaceAttribute &other)
*/

HB_FUNC_STATIC( QPLACEATTRIBUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceAttribute_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEATTRIBUTE(1) )
  {
    QPlaceAttribute_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString label() const

$prototypeV2=void setLabel( const QString & label )

$prototypeV2=QString text() const

$prototypeV2=void setText( const QString & text )

$prototypeV2=bool isEmpty() const

$extraMethods

#pragma ENDDUMP
