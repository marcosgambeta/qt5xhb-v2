%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

//[1]QPlaceContentRequest()
//[2]QPlaceContentRequest(const QPlaceContentRequest &other)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QPlaceContent::Type contentType() const
$method=|QPlaceContent::Type|contentType|

$prototype=void setContentType(QPlaceContent::Type type)
$method=|void|setContentType|QPlaceContent::Type

$prototype=QString placeId() const
$method=|QString|placeId|

$prototype=void setPlaceId(const QString &identifier)
$method=|void|setPlaceId|const QString &

$prototype=QVariant contentContext() const
$method=|QVariant|contentContext|

$prototype=void setContentContext(const QVariant &context)
$method=|void|setContentContext|const QVariant &

$prototype=int limit() const
$method=|int|limit|

$prototype=void setLimit(int limit)
$method=|void|setLimit|int

$prototype=void clear()
$method=|void|clear|

$extraMethods

#pragma ENDDUMP
