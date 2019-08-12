%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth
$added=5,10,0

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAbstractOAuthReplyHandler(QObject *parent = nullptr) (abstract)
%% $constructor=|new|QObject *=nullptr

$prototype=QAbstractOAuthReplyHandler(QObjectPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QAbstractOAuthReplyHandler()
$deleteMethod

$prototype=virtual QString callback() const = 0
$virtualMethod=|QString|callback|

$prototype=virtual void networkReplyFinished(QNetworkReply *reply) = 0 (slot)
$virtualMethod=|void|networkReplyFinished|QNetworkReply *

%%
%% SIGNALS
%%

$prototype=void callbackDataReceived( const QByteArray & data )
$signalMethod=|void|callbackDataReceived|const QByteArray &

$prototype=void callbackReceived( const QVariantMap & values )
%% TODO: $signalMethod=|void|callbackReceived|const QVariantMap &

$prototype=void replyDataReceived( const QByteArray & data )
$signalMethod=|void|replyDataReceived|const QByteArray &

$prototype=void tokensReceived( const QVariantMap & tokens )
%% TODO: $signalMethod=|void|tokensReceived|const QVariantMap &

#pragma ENDDUMP
