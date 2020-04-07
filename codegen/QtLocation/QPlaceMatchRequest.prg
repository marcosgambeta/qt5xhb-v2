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

$prototype=QPlaceMatchRequest()
$internalConstructor=|new1|

$prototype=QPlaceMatchRequest(const QPlaceMatchRequest &other)
$internalConstructor=|new2|const QPlaceMatchRequest &

/*
[1]QPlaceMatchRequest()
[2]QPlaceMatchRequest(const QPlaceMatchRequest &other)
*/

HB_FUNC_STATIC( QPLACEMATCHREQUEST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceMatchRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEMATCHREQUEST(1) )
  {
    QPlaceMatchRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QList<QPlace> places() const
$method=|QList<QPlace>|places|

$prototype=void setPlaces(const QList<QPlace> places)
$method=|void|setPlaces|const QList<QPlace> &

$prototype=void setResults(const QList<QPlaceSearchResult> &results)
$method=|void|setResults|const QList<QPlaceSearchResult> &

$prototype=void clear()
$method=|void|clear|

$extraMethods

#pragma ENDDUMP
