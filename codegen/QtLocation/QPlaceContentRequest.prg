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

#include <QtCore/QVariant>

$prototype=QPlaceContentRequest()
$internalConstructor=|new1|

$prototype=QPlaceContentRequest(const QPlaceContentRequest &other)
$internalConstructor=|new2|const QPlaceContentRequest &

/*
[1]QPlaceContentRequest()
[2]QPlaceContentRequest(const QPlaceContentRequest &other)
*/

HB_FUNC_STATIC( QPLACECONTENTREQUEST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContentRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENTREQUEST(1) )
  {
    QPlaceContentRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QPlaceContent::Type contentType() const

$prototypeV2=void setContentType( QPlaceContent::Type type )

$prototypeV2=QString placeId() const

$prototypeV2=void setPlaceId( const QString & identifier )

$prototypeV2=QVariant contentContext() const

$prototypeV2=void setContentContext( const QVariant & context )

$prototypeV2=int limit() const

$prototypeV2=void setLimit( int limit )

$prototypeV2=void clear()

$extraMethods

#pragma ENDDUMP
