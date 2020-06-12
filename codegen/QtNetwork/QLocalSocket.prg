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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLocalSocket(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QLocalSocket()
$deleteMethod

$prototype=void connectToServer(OpenMode openMode = ReadWrite)
$internalMethod=|void|connectToServer,connectToServer1|QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToServer(const QString &name, OpenMode openMode = ReadWrite)
$internalMethod=|void|connectToServer,connectToServer2|const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

/*
[1]void connectToServer(OpenMode openMode = ReadWrite)
[2]void connectToServer(const QString &name, OpenMode openMode = ReadWrite)
*/

HB_FUNC_STATIC( QLOCALSOCKET_CONNECTTOSERVER )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QLocalSocket_connectToServer1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QLocalSocket_connectToServer2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=connectToServer

$prototypeV2=void disconnectFromServer()

$prototype=void setServerName(const QString &name)
$method=|void|setServerName|const QString &

$prototypeV2=QString serverName() const

$prototypeV2=QString fullServerName() const

$prototypeV2=void abort()

$prototypeV2=virtual bool isSequential() const Q_DECL_OVERRIDE

$prototypeV2=virtual qint64 bytesAvailable() const Q_DECL_OVERRIDE

$prototypeV2=virtual qint64 bytesToWrite() const Q_DECL_OVERRIDE

$prototypeV2=virtual bool canReadLine() const Q_DECL_OVERRIDE

$prototype=virtual bool open(OpenMode openMode = ReadWrite) Q_DECL_OVERRIDE
$virtualMethod=|bool|open|QIODevice::OpenMode=QIODevice::ReadWrite

$prototypeV2=virtual void close() Q_DECL_OVERRIDE

$prototypeV2=QLocalSocket::LocalSocketError error() const

$prototypeV2=bool flush()

$prototypeV2=bool isValid() const

$prototypeV2=qint64 readBufferSize() const

$prototype=void setReadBufferSize(qint64 size)
$method=|void|setReadBufferSize|qint64

$prototype=bool setSocketDescriptor(qintptr socketDescriptor, LocalSocketState socketState = ConnectedState, OpenMode openMode = ReadWrite)
$method=|bool|setSocketDescriptor|qintptr,QLocalSocket::LocalSocketState=QLocalSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototypeV2=qintptr socketDescriptor() const

$prototypeV2=QLocalSocket::LocalSocketState state() const

$prototype=bool waitForBytesWritten(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForBytesWritten|int=30000

$prototype=bool waitForConnected(int msecs = 30000)
$method=|bool|waitForConnected|int=30000

$prototype=bool waitForDisconnected(int msecs = 30000)
$method=|bool|waitForDisconnected|int=30000

$prototype=bool waitForReadyRead(int msecs = 30000) Q_DECL_OVERRIDE
$method=|bool|waitForReadyRead|int=30000

$prototype=virtual qint64 readData(char*, qint64) Q_DECL_OVERRIDE [protected]

$prototype=virtual qint64 writeData(const char*, qint64) Q_DECL_OVERRIDE [protected]

%%
%% SIGNALS
%%

$prototype=void connected()
$signalMethod=|void|connected|

$prototype=void disconnected()
$signalMethod=|void|disconnected|

$prototype=void error( QLocalSocket::LocalSocketError socketError )
$signalMethod=|void|error,error,QOverload<QLocalSocket::LocalSocketError>|QLocalSocket::LocalSocketError

$prototype=void stateChanged( QLocalSocket::LocalSocketState socketState )
$signalMethod=|void|stateChanged|QLocalSocket::LocalSocketState

#pragma ENDDUMP
