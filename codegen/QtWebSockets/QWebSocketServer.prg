%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebSockets
$added=5,3,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QNetworkProxy>
#include <QtWebSockets/QWebSocket>
#include <QtWebSockets/QWebSocketCorsAuthenticator>

$prototype=explicit QWebSocketServer(const QString &serverName, SslMode secureMode, QObject *parent = nullptr)
$constructor=|new|const QString &,QWebSocketServer::SslMode,QObject *=nullptr

$deleteMethod

$prototype=bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
$method=|bool|listen|const QHostAddress &=QHostAddress::Any,quint16=0

$prototypeV2=void close()

$prototypeV2=bool isListening() const

$prototypeV2=int maxPendingConnections() const

$prototype=void setMaxPendingConnections(int numConnections)
$method=|void|setMaxPendingConnections|int

$prototypeV2=quint16 serverPort() const

$prototypeV2=QHostAddress serverAddress() const

$prototypeV2=QWebSocketServer::SslMode secureMode() const

$prototypeV2=int socketDescriptor() const

$prototype=bool setSocketDescriptor(int socketDescriptor)
$method=|bool|setSocketDescriptor|int

$prototypeV2=bool hasPendingConnections() const

$prototypeV2=virtual QWebSocket * nextPendingConnection()

$prototypeV2=QWebSocketProtocol::CloseCode error() const

$prototypeV2=QString errorString() const

$prototypeV2=void pauseAccepting()

$prototypeV2=void resumeAccepting()

$prototypeV2=QString serverName() const

$prototype=void setServerName(const QString &serverName)
$method=|void|setServerName|const QString &

$prototypeV2=QNetworkProxy proxy() const

$prototype=void setProxy(const QNetworkProxy &networkProxy)
$method=|void|setProxy|const QNetworkProxy &

$prototype=void setSslConfiguration(const QSslConfiguration &sslConfiguration)
$method=|void|setSslConfiguration|const QSslConfiguration &

$prototypeV2=QSslConfiguration sslConfiguration() const

$prototype=QList<QWebSocketProtocol::Version> supportedVersions() const
$method=|QList<QWebSocketProtocol::Version>|supportedVersions|

%%
%% SIGNALS
%%

$prototype=void acceptError( QAbstractSocket::SocketError socketError )
$signalMethod=|void|acceptError|QAbstractSocket::SocketError

$prototype=void serverError( QWebSocketProtocol::CloseCode closeCode )
$signalMethod=|void|serverError|QWebSocketProtocol::CloseCode

$prototype=void originAuthenticationRequired( QWebSocketCorsAuthenticator * pAuthenticator )
$signalMethod=|void|originAuthenticationRequired|QWebSocketCorsAuthenticator *

$prototype=void newConnection()
$signalMethod=|void|newConnection|

$prototype=void peerVerifyError( const QSslError & error )
$signalMethod=|void|peerVerifyError|const QSslError &

$prototype=void sslErrors( const QList<QSslError> & errors )
$signalMethod=|void|sslErrors|const QList<QSslError> &

$prototype=void closed()
$signalMethod=|void|closed|

#pragma ENDDUMP
