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

$beginClassFrom=QPlaceContent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPlaceImage()
$internalConstructor=|new1|

$prototype=QPlaceImage(const QPlaceContent &other)
$internalConstructor=|new2|const QPlaceContent &

/*
[1]QPlaceImage()
[2]QPlaceImage(const QPlaceContent &other)
*/

HB_FUNC_STATIC( QPLACEIMAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceImage_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceImage_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QUrl url() const

$prototype=void setUrl(const QUrl &url)
$method=|void|setUrl|const QUrl &

$prototypeV2=QString imageId() const

$prototype=void setImageId(const QString &identifier)
$method=|void|setImageId|const QString &

$prototypeV2=QString mimeType() const

$prototype=void setMimeType(const QString &data)
$method=|void|setMimeType|const QString &

#pragma ENDDUMP
