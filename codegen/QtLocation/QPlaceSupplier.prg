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

$prototype=QPlaceSupplier()
$internalConstructor=|new1|

$prototype=QPlaceSupplier(const QPlaceSupplier &other)
$internalConstructor=|new2|const QPlaceSupplier &

/*
[1]QPlaceSupplier()
[2]QPlaceSupplier(const QPlaceSupplier &other)
*/

HB_FUNC_STATIC( QPLACESUPPLIER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSupplier_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESUPPLIER(1) )
  {
    QPlaceSupplier_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString name() const

$prototypeV2=void setName( const QString & data )

$prototypeV2=QString supplierId() const

$prototypeV2=void setSupplierId( const QString & identifier )

$prototypeV2=QUrl url() const

$prototypeV2=void setUrl( const QUrl & data )

$prototypeV2=QPlaceIcon icon() const

$prototypeV2=void setIcon( const QPlaceIcon & icon )

$prototypeV2=bool isEmpty() const

$extraMethods

#pragma ENDDUMP
