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

$prototype=void clear()
$method=|void|clear|

$prototype=QList<QWebEngineHistoryItem> items() const
$method=|QList<QWebEngineHistoryItem>|items|

$prototype=QList<QWebEngineHistoryItem> backItems(int maxItems) const
$method=|QList<QWebEngineHistoryItem>|backItems|int

$prototype=QList<QWebEngineHistoryItem> forwardItems(int maxItems) const
$method=|QList<QWebEngineHistoryItem>|forwardItems|int

$prototype=bool canGoBack() const
$method=|bool|canGoBack|

$prototype=bool canGoForward() const
$method=|bool|canGoForward|

$prototype=void back()
$method=|void|back|

$prototype=void forward()
$method=|void|forward|

$prototype=void goToItem(const QWebEngineHistoryItem &item)
$method=|void|goToItem|const QWebEngineHistoryItem &

$prototype=QWebEngineHistoryItem backItem() const
$method=|QWebEngineHistoryItem|backItem|

$prototype=QWebEngineHistoryItem currentItem() const
$method=|QWebEngineHistoryItem|currentItem|

$prototype=QWebEngineHistoryItem forwardItem() const
$method=|QWebEngineHistoryItem|forwardItem|

$prototype=QWebEngineHistoryItem itemAt(int i) const
$method=|QWebEngineHistoryItem|itemAt|int

$prototype=int currentItemIndex() const
$method=|int|currentItemIndex|

$prototype=int count() const
$method=|int|count|

$extraMethods

#pragma ENDDUMP
