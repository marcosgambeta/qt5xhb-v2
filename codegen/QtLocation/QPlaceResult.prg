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

$prototype=QPlaceResult()
$constructor=|new|

$deleteMethod

$prototypeV2=qreal distance() const

$prototype=void setDistance(qreal distance)
$method=|void|setDistance|qreal

$prototypeV2=QPlace place() const

$prototype=void setPlace(const QPlace &place)
$method=|void|setPlace|const QPlace &

$prototypeV2=bool isSponsored() const

$prototype=void setSponsored(bool sponsored)
$method=|void|setSponsored|bool

#pragma ENDDUMP
