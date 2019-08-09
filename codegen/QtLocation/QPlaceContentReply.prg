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

$prototype=explicit QPlaceContentReply(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=QPlaceReply::Type type() const
$method=|QPlaceReply::Type|type|

$prototype=int totalCount() const
$method=|int|totalCount|

$prototype=QPlaceContentRequest request() const
$method=|QPlaceContentRequest|request|

$prototype=QPlaceContentRequest previousPageRequest() const
$method=|QPlaceContentRequest|previousPageRequest|

$prototype=QPlaceContentRequest nextPageRequest() const
$method=|QPlaceContentRequest|nextPageRequest|

#pragma ENDDUMP
