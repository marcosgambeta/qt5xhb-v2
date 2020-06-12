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

$beginClassFrom=QIODevice

$addMethods
%% #ifndef QT_NO_NETWORKPROXY
%%   METHOD proxy
%% #endif
%% #ifndef QT_NO_NETWORKPROXY
%%   METHOD setProxy
%% #endif

$addSignals

%% #ifndef QT_NO_NETWORKPROXY
%% METHOD onProxyAuthenticationRequired
%% #endif

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QAuthenticator>
#include <QtNetwork/QHostAddress>
#include <QtNetwork/QNetworkProxy>

$prototype=QAbstractSocket ( SocketType socketType, QObject * parent )
$constructor=|new|QAbstractSocket::SocketType,QObject *

$prototype=QAbstractSocket(SocketType socketType, QAbstractSocketPrivate &dd, QObject *parent = nullptr) [protected]

$prototype=virtual ~QAbstractSocket()
$deleteMethod

$prototypeV2=virtual void resume()

$prototypeV2=QAbstractSocket::PauseModes pauseMode() const

$prototype=void setPauseMode(PauseModes pauseMode)
$method=|void|setPauseMode|QAbstractSocket::PauseModes

$prototype=bool bind(const QHostAddress &address, quint16 port = 0, BindMode mode = DefaultForPlatform)
$internalMethod=|bool|bind,bind1|const QHostAddress &,quint16=0,QAbstractSocket::BindMode=QAbstractSocket::DefaultForPlatform

$prototype=bool bind(quint16 port = 0, BindMode mode = DefaultForPlatform)
$internalMethod=|bool|bind,bind2|quint16=0,QAbstractSocket::BindMode=QAbstractSocket::DefaultForPlatform

/*
[1]bool bind(const QHostAddress &address, quint16 port = 0, BindMode mode = DefaultForPlatform)
[2]bool bind(quint16 port = 0, BindMode mode = DefaultForPlatform)
*/

HB_FUNC_STATIC( QABSTRACTSOCKET_BIND )
{
  if( ISBETWEEN(1,3) && ISQHOSTADDRESS(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QAbstractSocket_bind1();
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QAbstractSocket_bind2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=bind

$prototype=virtual void connectToHost(const QString &hostName, quint16 port, OpenMode mode = ReadWrite, NetworkLayerProtocol protocol = AnyIPProtocol)
$internalVirtualMethod=|void|connectToHost,connectToHost1|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite,QAbstractSocket::NetworkLayerProtocol=QAbstractSocket::AnyIPProtocol

$prototype=virtual void connectToHost(const QHostAddress &address, quint16 port, OpenMode mode = ReadWrite)
$internalVirtualMethod=|void|connectToHost,connectToHost2|const QHostAddress &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

/*
[1]virtual void connectToHost(const QString &hostName, quint16 port, OpenMode mode = ReadWrite, NetworkLayerProtocol protocol = AnyIPProtocol)
[2]virtual void connectToHost(const QHostAddress &address, quint16 port, OpenMode mode = ReadWrite)
*/

HB_FUNC_STATIC( QABSTRACTSOCKET_CONNECTTOHOST )
{
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QAbstractSocket_connectToHost1();
  }
  else if( ISBETWEEN(2,3) && ISQHOSTADDRESS(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QAbstractSocket_connectToHost2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=connectToHost

$prototypeV2=virtual void disconnectFromHost()

$prototypeV2=bool isValid() const

$prototypeV2=qint64 bytesAvailable() const Q_DECL_OVERRIDE

$prototypeV2=qint64 bytesToWrite() const Q_DECL_OVERRIDE

$prototypeV2=bool canReadLine() const Q_DECL_OVERRIDE

$prototypeV2=quint16 localPort() const

$prototypeV2=QHostAddress localAddress() const

$prototypeV2=quint16 peerPort() const

$prototypeV2=QHostAddress peerAddress() const

$prototypeV2=QString peerName() const

$prototypeV2=qint64 readBufferSize() const

$prototype=virtual void setReadBufferSize(qint64 size)
$virtualMethod=|void|setReadBufferSize|qint64

$prototypeV2=void abort()

$prototypeV2=virtual qintptr socketDescriptor() const

$prototype=virtual bool setSocketDescriptor(qintptr socketDescriptor, SocketState state = ConnectedState, OpenMode openMode = ReadWrite)
$virtualMethod=|bool|setSocketDescriptor|qintptr,QAbstractSocket::SocketState=QAbstractSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant &value)
$virtualMethod=|void|setSocketOption|QAbstractSocket::SocketOption,const QVariant &

$prototype=virtual QVariant socketOption(QAbstractSocket::SocketOption option)
$virtualMethod=|QVariant|socketOption|QAbstractSocket::SocketOption

$prototypeV2=QAbstractSocket::SocketType socketType() const

$prototypeV2=QAbstractSocket::SocketState state() const

$prototypeV2=QAbstractSocket::SocketError error() const

$prototypeV2=void close() Q_DECL_OVERRIDE

$prototypeV2=bool isSequential() const Q_DECL_OVERRIDE

$prototypeV2=bool atEnd() const Q_DECL_OVERRIDE

$prototypeV2=bool flush()

$prototype=virtual bool waitForConnected(int msecs = 30000)
$virtualMethod=|bool|waitForConnected|int=30000

$prototype=bool waitForReadyRead(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForReadyRead|int=30000

$prototype=bool waitForBytesWritten(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForDisconnected(int msecs = 30000)
$virtualMethod=|bool|waitForDisconnected|int=30000

%% #ifndef QT_NO_NETWORKPROXY

$prototype=void setProxy(const QNetworkProxy &networkProxy)
$method=|void|setProxy|const QNetworkProxy &

$prototypeV2=QNetworkProxy proxy() const

%% #endif

$prototype=qint64 readData(char *data, qint64 maxlen) Q_DECL_OVERRIDE [protected]

$prototype=qint64 readLineData(char *data, qint64 maxlen) Q_DECL_OVERRIDE [protected]

$prototype=qint64 writeData(const char *data, qint64 len) Q_DECL_OVERRIDE [protected]

$prototype=void setSocketState(SocketState state) [protected]

$prototype=void setSocketError(SocketError socketError) [protected]

$prototype=void setLocalPort(quint16 port) [protected]

$prototype=void setLocalAddress(const QHostAddress &address) [protected]

$prototype=void setPeerPort(quint16 port) [protected]

$prototype=void setPeerAddress(const QHostAddress &address) [protected]

$prototype=void setPeerName(const QString &name) [protected]

%%
%% SIGNALS
%%

$prototype=void connected()
$signalMethod=|void|connected|

$prototype=void disconnected()
$signalMethod=|void|disconnected|

$prototype=void error( QAbstractSocket::SocketError socketError )
$signalMethod=|void|error,error,QOverload<QAbstractSocket::SocketError>|QAbstractSocket::SocketError

$prototype=void hostFound()
$signalMethod=|void|hostFound|

%% #ifndef QT_NO_NETWORKPROXY
$prototype=void proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
$signalMethod=|void|proxyAuthenticationRequired|const QNetworkProxy &,QAuthenticator *
%% #endif

$prototype=void stateChanged( QAbstractSocket::SocketState socketState )
$signalMethod=|void|stateChanged|QAbstractSocket::SocketState

#pragma ENDDUMP
