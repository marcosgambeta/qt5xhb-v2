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

$prototype=QPlaceResult()
$constructor=|new|

$deleteMethod

$prototype=qreal distance() const
$method=|qreal|distance|

$prototype=void setDistance(qreal distance)
$method=|void|setDistance|qreal

$prototype=QPlace place() const
$method=|QPlace|place|

$prototype=void setPlace(const QPlace &place)
$method=|void|setPlace|const QPlace &

$prototype=bool isSponsored() const
$method=|bool|isSponsored|

$prototype=void setSponsored(bool sponsored)
$method=|void|setSponsored|bool

#pragma ENDDUMP
