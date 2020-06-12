%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods
%% #ifndef QT_NO_NETWORKPROXY
%%   METHOD proxy
%% #endif
%% #ifndef QT_NO_NETWORKPROXY
%%   METHOD setProxy
%% #endif

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QNetworkProxy>
#include <QtNetwork/QTcpSocket>

$prototype=explicit QTcpServer(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QTcpServer(QAbstractSocket::SocketType socketType, QTcpServerPrivate &dd, QObject *parent = nullptr) [protected]

$prototype=virtual ~QTcpServer()
$deleteMethod

$prototype=bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
$method=|bool|listen|const QHostAddress &=QHostAddress::Any,quint16=0

$prototypeV2=void close()

$prototypeV2=bool isListening() const

$prototype=void setMaxPendingConnections(int numConnections)
$method=|void|setMaxPendingConnections|int

$prototypeV2=int maxPendingConnections() const

$prototypeV2=quint16 serverPort() const

$prototypeV2=QHostAddress serverAddress() const

$prototypeV2=qintptr socketDescriptor() const

$prototype=bool setSocketDescriptor(qintptr socketDescriptor)
$method=|bool|setSocketDescriptor|qintptr

$prototype=bool waitForNewConnection(int msec = 0, bool *timedOut = nullptr)
$method=|bool|waitForNewConnection|int=0,bool *=nullptr

$prototypeV2=virtual bool hasPendingConnections() const

$prototypeV2=virtual QTcpSocket * nextPendingConnection()

$prototypeV2=QAbstractSocket::SocketError serverError() const

$prototypeV2=QString errorString() const

$prototypeV2=void pauseAccepting()

$prototypeV2=void resumeAccepting()

%% #ifndef QT_NO_NETWORKPROXY

$prototype=void setProxy(const QNetworkProxy &networkProxy)
$method=|void|setProxy|const QNetworkProxy &

$prototypeV2=QNetworkProxy proxy() const

%% #endif

$prototype=virtual void incomingConnection(qintptr handle) [protected]

$prototype=void addPendingConnection(QTcpSocket* socket) [protected]

%%
%% SIGNALS
%%

$prototype=void acceptError( QAbstractSocket::SocketError socketError )
$signalMethod=|void|acceptError|QAbstractSocket::SocketError

$prototype=void newConnection()
$signalMethod=|void|newConnection|

#pragma ENDDUMP
