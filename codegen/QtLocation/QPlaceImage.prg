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

$prototype=QUrl url() const
$method=|QUrl|url|

$prototype=void setUrl(const QUrl &url)
$method=|void|setUrl|const QUrl &

$prototype=QString imageId() const
$method=|QString|imageId|

$prototype=void setImageId(const QString &identifier)
$method=|void|setImageId|const QString &

$prototype=QString mimeType() const
$method=|QString|mimeType|

$prototype=void setMimeType(const QString &data)
$method=|void|setMimeType|const QString &

#pragma ENDDUMP
