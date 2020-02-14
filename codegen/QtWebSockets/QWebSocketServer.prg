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

$prototype=void close()
$method=|void|close|

$prototype=bool isListening() const
$method=|bool|isListening|

$prototype=int maxPendingConnections() const
$method=|int|maxPendingConnections|

$prototype=void setMaxPendingConnections(int numConnections)
$method=|void|setMaxPendingConnections|int

$prototype=quint16 serverPort() const
$method=|quint16|serverPort|

$prototype=QHostAddress serverAddress() const
$method=|QHostAddress|serverAddress|

$prototype=SslMode secureMode() const
$method=|QWebSocketServer::SslMode|secureMode|

$prototype=int socketDescriptor() const
$method=|int|socketDescriptor|

$prototype=bool setSocketDescriptor(int socketDescriptor)
$method=|bool|setSocketDescriptor|int

$prototype=bool hasPendingConnections() const
$method=|bool|hasPendingConnections|

$prototype=virtual QWebSocket *nextPendingConnection()
$virtualMethod=|QWebSocket *|nextPendingConnection|

$prototype=QWebSocketProtocol::CloseCode error() const
$method=|QWebSocketProtocol::CloseCode|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=void pauseAccepting()
$method=|void|pauseAccepting|

$prototype=void resumeAccepting()
$method=|void|resumeAccepting|

$prototype=QString serverName() const
$method=|QString|serverName|

$prototype=void setServerName(const QString &serverName)
$method=|void|setServerName|const QString &

$prototype=QNetworkProxy proxy() const
$method=|QNetworkProxy|proxy|

$prototype=void setProxy(const QNetworkProxy &networkProxy)
$method=|void|setProxy|const QNetworkProxy &

$prototype=void setSslConfiguration(const QSslConfiguration &sslConfiguration)
$method=|void|setSslConfiguration|const QSslConfiguration &

$prototype=QSslConfiguration sslConfiguration() const
$method=|QSslConfiguration|sslConfiguration|

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
