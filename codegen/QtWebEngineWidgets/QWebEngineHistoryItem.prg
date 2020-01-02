%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=QUrl originalUrl() const
$method=|QUrl|originalUrl|

$prototype=QUrl url() const
$method=|QUrl|url|

$prototype=QString title() const
$method=|QString|title|

$prototype=QDateTime lastVisited() const
$method=|QDateTime|lastVisited|

$prototype=QUrl iconUrl() const
$method=|QUrl|iconUrl|

$prototype=bool isValid() const
$method=|bool|isValid|

$extraMethods

#pragma ENDDUMP
