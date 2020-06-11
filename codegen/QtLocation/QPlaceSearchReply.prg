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

$beginClassFrom=QPlaceReply

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtLocation/QPlaceSearchRequest>

$prototype=explicit QPlaceSearchReply(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QPlaceReply::Type type() const

$prototype=QList<QPlaceSearchResult> results() const
$method=|QList<QPlaceSearchResult>|results|

$prototypeV2=QPlaceSearchRequest request() const

$prototypeV2=QPlaceSearchRequest previousPageRequest() const

$prototypeV2=QPlaceSearchRequest nextPageRequest() const

#pragma ENDDUMP
