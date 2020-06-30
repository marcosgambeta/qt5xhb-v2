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

$prototypeV2=QPlaceSearchRequest searchRequest() const

$prototypeV2=void setSearchRequest( const QPlaceSearchRequest & request )

#pragma ENDDUMP
