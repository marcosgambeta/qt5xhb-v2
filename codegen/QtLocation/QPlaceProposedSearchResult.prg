%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPlaceSearchResult

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtLocation/QPlaceSearchRequest>

$prototype=QPlaceProposedSearchResult()
$constructor=|new|

$deleteMethod

$prototype=QPlaceSearchRequest searchRequest() const
$method=|QPlaceSearchRequest|searchRequest|

$prototype=void setSearchRequest(const QPlaceSearchRequest &request)
$method=|void|setSearchRequest|const QPlaceSearchRequest &

#pragma ENDDUMP
