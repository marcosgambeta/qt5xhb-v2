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

$prototype=QPlaceSearchResult()
$internalConstructor=|new1|

$prototype=QPlaceSearchResult(const QPlaceSearchResult &other)
$internalConstructor=|new2|const QPlaceSearchResult &

/*
[1]QPlaceSearchResult()
[2]QPlaceSearchResult(const QPlaceSearchResult &other)
*/

HB_FUNC_STATIC( QPLACESEARCHRESULT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSearchResult_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESEARCHRESULT(1) )
  {
    QPlaceSearchResult_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=SearchResultType type() const
$method=|QPlaceSearchResult::SearchResultType|type|

$prototype=QString title() const
$method=|QString|title|

$prototype=void setTitle(const QString &title)
$method=|void|setTitle|const QString &

$prototype=QPlaceIcon icon() const
$method=|QPlaceIcon|icon|

$prototype=void setIcon(const QPlaceIcon &icon)
$method=|void|setIcon|const QPlaceIcon &

$extraMethods

#pragma ENDDUMP
