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

#include <QtCore/QVariant>

$prototype=QWebHistoryItem ( const QWebHistoryItem & other )
$constructor=|new|const QWebHistoryItem &

$deleteMethod

$prototypeV2=QIcon icon() const

$prototypeV2=bool isValid() const

$prototypeV2=QDateTime lastVisited() const

$prototypeV2=QUrl originalUrl() const

$prototype=void setUserData ( const QVariant & userData )
$method=|void|setUserData|const QVariant &

$prototypeV2=QString title() const

$prototypeV2=QUrl url() const

$prototypeV2=QVariant userData() const

$extraMethods

#pragma ENDDUMP
