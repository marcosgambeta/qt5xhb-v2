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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBluetoothServer(QBluetoothServiceInfo::Protocol serverType, QObject *parent = nullptr)
$constructor=|new|QBluetoothServiceInfo::Protocol,QObject *=nullptr

$deleteMethod

$prototypeV2=void close()

$prototype=bool listen(const QBluetoothAddress &address = QBluetoothAddress(), quint16 port = 0)
$internalMethod=|bool|listen,listen1|const QBluetoothAddress &=QBluetoothAddress(),quint16=0

$prototype=QBluetoothServiceInfo listen(const QBluetoothUuid &uuid, const QString &serviceName = QString())
$internalMethod=|QBluetoothServiceInfo|listen,listen2|const QBluetoothUuid &,const QString &=QString()

/*
[1]bool listen(const QBluetoothAddress &address = QBluetoothAddress(), quint16 port = 0)
[2]QBluetoothServiceInfo listen(const QBluetoothUuid &uuid, const QString &serviceName = QString())
*/

HB_FUNC_STATIC( QBLUETOOTHSERVER_LISTEN )
{
  if( ISBETWEEN(0,2) && (ISQBLUETOOTHADDRESS(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QBluetoothServer_listen1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHUUID(1) && ISOPTCHAR(2) )
  {
    QBluetoothServer_listen2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=listen

$prototypeV2=bool isListening() const

$prototypeV2=void setMaxPendingConnections( int numConnections )

$prototypeV2=int maxPendingConnections() const

$prototypeV2=bool hasPendingConnections() const

$prototypeV2=QBluetoothSocket * nextPendingConnection()

$prototypeV2=QBluetoothAddress serverAddress() const

$prototypeV2=quint16 serverPort() const

$prototypeV2=void setSecurityFlags( QBluetooth::SecurityFlags security )

$prototypeV2=QBluetooth::SecurityFlags securityFlags() const

$prototypeV2=QBluetoothServiceInfo::Protocol serverType() const

$prototypeV2=QBluetoothServer::Error error() const

%%
%% SIGNALS
%%

$prototype=void newConnection()
$signalMethod=|void|newConnection|

$prototype=void error( QBluetoothServer::Error error )
$signalMethod=|void|error,error,QOverload<QBluetoothServer::Error>|QBluetoothServer::Error

#pragma ENDDUMP
