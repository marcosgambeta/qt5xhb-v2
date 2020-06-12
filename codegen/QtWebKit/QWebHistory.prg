%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=void back()

$prototypeV2=QWebHistoryItem backItem() const

$prototype=QList<QWebHistoryItem> backItems ( int maxItems ) const
$method=|QList<QWebHistoryItem>|backItems|int

$prototypeV2=bool canGoBack() const

$prototypeV2=bool canGoForward() const

$prototypeV2=void clear()

$prototypeV2=int count() const

$prototypeV2=QWebHistoryItem currentItem() const

$prototypeV2=int currentItemIndex() const

$prototypeV2=void forward()

$prototypeV2=QWebHistoryItem forwardItem() const

$prototype=QList<QWebHistoryItem> forwardItems ( int maxItems ) const
$method=|QList<QWebHistoryItem>|forwardItems|int

$prototype=void goToItem ( const QWebHistoryItem & item )
$method=|void|goToItem|const QWebHistoryItem &

$prototype=QWebHistoryItem itemAt ( int i ) const
$method=|QWebHistoryItem|itemAt|int

$prototype=QList<QWebHistoryItem> items () const
$method=|QList<QWebHistoryItem>|items|

$prototypeV2=int maximumItemCount() const

$prototype=void setMaximumItemCount ( int count )
$method=|void|setMaximumItemCount|int

$extraMethods

#pragma ENDDUMP
