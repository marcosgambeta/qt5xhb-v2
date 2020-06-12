%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth
$added=5,10,0

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractOAuthReplyHandler

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QOAuthOobReplyHandler(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QString callback() const override

$prototype=void networkReplyFinished(QNetworkReply *reply) override [protected]

$prototype=QVariantMap parseResponse(const QByteArray &response) [private]

#pragma ENDDUMP
