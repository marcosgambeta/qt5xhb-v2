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

$prototype=QPlaceUser()
$internalConstructor=|new1|

$prototype=QPlaceUser(const QPlaceUser &other)
$internalConstructor=|new2|const QPlaceUser &

/*
[1]QPlaceUser()
[2]QPlaceUser(const QPlaceUser &other)
*/

HB_FUNC_STATIC( QPLACEUSER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceUser_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEUSER(1) )
  {
    QPlaceUser_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString userId() const

$prototypeV2=void setUserId( const QString & identifier )

$prototypeV2=QString name() const

$prototypeV2=void setName( const QString & name )

$extraMethods

#pragma ENDDUMP
