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

#include <QtLocation/QPlaceManager>

$prototype=QPlaceIcon()
$internalConstructor=|new1|

$prototype=QPlaceIcon(const QPlaceIcon &other)
$internalConstructor=|new2|const QPlaceIcon &

/*
[1]QPlaceIcon()
[2]QPlaceIcon(const QPlaceIcon &other)
*/

HB_FUNC_STATIC( QPLACEICON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceIcon_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEICON(1) )
  {
    QPlaceIcon_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QUrl url(const QSize &size = QSize()) const
$method=|QUrl|url|const QSize &=QSize()

$prototype=QPlaceManager *manager() const
$method=|QPlaceManager *|manager|

$prototype=void setManager(QPlaceManager *manager)
$method=|void|setManager|QPlaceManager *

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
