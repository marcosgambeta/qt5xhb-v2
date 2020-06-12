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

$prototypeV2=void clear()

$prototype=QList<QWebEngineHistoryItem> items() const
$method=|QList<QWebEngineHistoryItem>|items|

$prototype=QList<QWebEngineHistoryItem> backItems(int maxItems) const
$method=|QList<QWebEngineHistoryItem>|backItems|int

$prototype=QList<QWebEngineHistoryItem> forwardItems(int maxItems) const
$method=|QList<QWebEngineHistoryItem>|forwardItems|int

$prototypeV2=bool canGoBack() const

$prototypeV2=bool canGoForward() const

$prototypeV2=void back()

$prototypeV2=void forward()

$prototype=void goToItem(const QWebEngineHistoryItem &item)
$method=|void|goToItem|const QWebEngineHistoryItem &

$prototypeV2=QWebEngineHistoryItem backItem() const

$prototypeV2=QWebEngineHistoryItem currentItem() const

$prototypeV2=QWebEngineHistoryItem forwardItem() const

$prototype=QWebEngineHistoryItem itemAt(int i) const
$method=|QWebEngineHistoryItem|itemAt|int

$prototypeV2=int currentItemIndex() const

$prototypeV2=int count() const

$extraMethods

#pragma ENDDUMP
