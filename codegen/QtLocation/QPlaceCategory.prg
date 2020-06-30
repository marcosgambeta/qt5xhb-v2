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

#include <QtLocation/QPlaceIcon>

$prototype=QPlaceCategory()
$internalConstructor=|new1|

$prototype=QPlaceCategory(const QPlaceCategory &other)
$internalConstructor=|new2|const QPlaceCategory &

/*
[1]QPlaceCategory()
[2]QPlaceCategory(const QPlaceCategory &other)
*/

HB_FUNC_STATIC( QPLACECATEGORY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceCategory_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECATEGORY(1) )
  {
    QPlaceCategory_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString categoryId() const

$prototypeV2=void setCategoryId( const QString & identifier )

$prototypeV2=QString name() const

$prototypeV2=void setName( const QString & name )

$prototypeV2=QLocation::Visibility visibility() const

$prototypeV2=void setVisibility( QLocation::Visibility visibility )

$prototypeV2=QPlaceIcon icon() const

$prototypeV2=void setIcon( const QPlaceIcon & icon )

$prototypeV2=bool isEmpty() const

$extraMethods

#pragma ENDDUMP
