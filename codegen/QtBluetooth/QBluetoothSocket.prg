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

$prototypeV2=void abort()

$prototypeV2=virtual void close()

$prototypeV2=bool isSequential() const

$prototypeV2=virtual qint64 bytesAvailable() const

$prototypeV2=virtual qint64 bytesToWrite() const

$prototypeV2=virtual bool canReadLine() const

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

$prototypeV2=void disconnectFromService()

$prototypeV2=QString localName() const

$prototypeV2=QBluetoothAddress localAddress() const

$prototypeV2=quint16 localPort() const

$prototypeV2=QString peerName() const

$prototypeV2=QBluetoothAddress peerAddress() const

$prototypeV2=quint16 peerPort() const

$prototype=bool setSocketDescriptor(int socketDescriptor, QBluetoothServiceInfo::Protocol socketType,SocketState socketState = ConnectedState,OpenMode openMode = ReadWrite)
$method=|bool|setSocketDescriptor|int,QBluetoothServiceInfo::Protocol,QBluetoothSocket::SocketState=QBluetoothSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototypeV2=int socketDescriptor() const

$prototypeV2=QBluetoothServiceInfo::Protocol socketType() const

$prototypeV2=QBluetoothSocket::SocketState state() const

$prototypeV2=QBluetoothSocket::SocketError error() const

$prototypeV2=QString errorString() const

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
