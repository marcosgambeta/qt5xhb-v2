%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineWidgets
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

$prototype=QWebEngineHistoryItem(const QWebEngineHistoryItem &other)
$constructor=|new|const QWebEngineHistoryItem &

$deleteMethod

$prototypeV2=QUrl originalUrl() const

$prototypeV2=QUrl url() const

$prototypeV2=QString title() const

$prototypeV2=QDateTime lastVisited() const

$prototypeV2=QUrl iconUrl() const

$prototypeV2=bool isValid() const

$extraMethods

#pragma ENDDUMP
