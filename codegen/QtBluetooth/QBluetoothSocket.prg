%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth
$added=5,2,0

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

$prototype=QBluetoothSocket(QBluetoothServiceInfo::Protocol socketType, QObject *parent = nullptr)
$internalConstructor=|new1|QBluetoothServiceInfo::Protocol,QObject *=nullptr

$prototype=QBluetoothSocket(QObject *parent = nullptr)
$internalConstructor=|new2|QObject *=nullptr

/*
[1]QBluetoothSocket(QBluetoothServiceInfo::Protocol socketType, QObject *parent = nullptr)
[2]QBluetoothSocket(QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QBLUETOOTHSOCKET_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothSocket_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothSocket_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void abort()
$method=|void|abort|

$prototype=virtual void close()
$virtualMethod=|void|close|

$prototype=bool isSequential() const
$method=|bool|isSequential|

$prototype=virtual qint64 bytesAvailable() const
$virtualMethod=|qint64|bytesAvailable|

$prototype=virtual qint64 bytesToWrite() const
$virtualMethod=|qint64|bytesToWrite|

$prototype=virtual bool canReadLine() const
$virtualMethod=|bool|canReadLine|

$prototype=void connectToService(const QBluetoothServiceInfo &service, OpenMode openMode = ReadWrite)
$internalMethod=|void|connectToService,connectToService1|const QBluetoothServiceInfo &,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToService(const QBluetoothAddress &address, const QBluetoothUuid &uuid, OpenMode openMode = ReadWrite)
$internalMethod=|void|connectToService,connectToService2|const QBluetoothAddress &,const QBluetoothUuid &,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToService(const QBluetoothAddress &address, quint16 port, OpenMode openMode = ReadWrite)
$internalMethod=|void|connectToService,connectToService3|const QBluetoothAddress &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

/*
[1]void connectToService(const QBluetoothServiceInfo &service, OpenMode openMode = ReadWrite)
[2]void connectToService(const QBluetoothAddress &address, const QBluetoothUuid &uuid, OpenMode openMode = ReadWrite)
[3]void connectToService(const QBluetoothAddress &address, quint16 port, OpenMode openMode = ReadWrite)
*/

HB_FUNC_STATIC( QBLUETOOTHSOCKET_CONNECTTOSERVICE )
{
  if( ISBETWEEN(1,2) && ISQBLUETOOTHSERVICEINFO(1) && ISOPTNUM(2) )
  {
    QBluetoothSocket_connectToService1();
  }
  else if( ISBETWEEN(2,3) && ISQBLUETOOTHADDRESS(1) && ISQBLUETOOTHUUID(2) && ISOPTNUM(3) )
  {
    QBluetoothSocket_connectToService2();
  }
  else if( ISBETWEEN(2,3) && ISQBLUETOOTHADDRESS(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QBluetoothSocket_connectToService3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=connectToService

$prototype=void disconnectFromService()
$method=|void|disconnectFromService|

$prototype=QString localName() const
$method=|QString|localName|

$prototype=QBluetoothAddress localAddress() const
$method=|QBluetoothAddress|localAddress|

$prototype=quint16 localPort() const
$method=|quint16|localPort|

$prototype=QString peerName() const
$method=|QString|peerName|

$prototype=QBluetoothAddress peerAddress() const
$method=|QBluetoothAddress|peerAddress|

$prototype=quint16 peerPort() const
$method=|quint16|peerPort|

$prototype=bool setSocketDescriptor(int socketDescriptor, QBluetoothServiceInfo::Protocol socketType,SocketState socketState = ConnectedState,OpenMode openMode = ReadWrite)
$method=|bool|setSocketDescriptor|int,QBluetoothServiceInfo::Protocol,QBluetoothSocket::SocketState=QBluetoothSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=int socketDescriptor() const
$method=|int|socketDescriptor|

$prototype=QBluetoothServiceInfo::Protocol socketType() const
$method=|QBluetoothServiceInfo::Protocol|socketType|

$prototype=SocketState state() const
$method=|QBluetoothSocket::SocketState|state|

$prototype=SocketError error() const
$method=|QBluetoothSocket::SocketError|error|

$prototype=QString errorString() const
$method=|QString|errorString|

%%
%% SIGNALS
%%

$prototype=void connected()
$signalMethod=|void|connected|

$prototype=void disconnected()
$signalMethod=|void|disconnected|

$prototype=void error( QBluetoothSocket::SocketError error )
$signalMethod=|void|error,error,QOverload<QBluetoothSocket::SocketError>|QBluetoothSocket::SocketError

$prototype=void stateChanged( QBluetoothSocket::SocketState state )
$signalMethod=|void|stateChanged|QBluetoothSocket::SocketState

#pragma ENDDUMP
