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

$prototype=QPlaceReply::Type type() const
$method=|QPlaceReply::Type|type|

$prototype=QList<QPlaceSearchResult> results() const
$method=|QList<QPlaceSearchResult>|results|

$prototype=QPlaceSearchRequest request() const
$method=|QPlaceSearchRequest|request|

$prototype=QPlaceSearchRequest previousPageRequest() const
$method=|QPlaceSearchRequest|previousPageRequest|

$prototype=QPlaceSearchRequest nextPageRequest() const
$method=|QPlaceSearchRequest|nextPageRequest|

#pragma ENDDUMP
