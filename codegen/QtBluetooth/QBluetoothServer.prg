%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=void close()
$method=|void|close|

$prototype=bool listen(const QBluetoothAddress &address = QBluetoothAddress(), quint16 port = 0)
$internalMethod=|bool|listen,listen1|const QBluetoothAddress &=QBluetoothAddress(),quint16=0

$prototype=QBluetoothServiceInfo listen(const QBluetoothUuid &uuid, const QString &serviceName = QString())
$internalMethod=|QBluetoothServiceInfo|listen,listen2|const QBluetoothUuid &,const QString &=QString()

//[1]bool listen(const QBluetoothAddress &address = QBluetoothAddress(), quint16 port = 0)
//[2]QBluetoothServiceInfo listen(const QBluetoothUuid &uuid, const QString &serviceName = QString())

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=listen

$prototype=bool isListening() const
$method=|bool|isListening|

$prototype=void setMaxPendingConnections(int numConnections)
$method=|void|setMaxPendingConnections|int

$prototype=int maxPendingConnections() const
$method=|int|maxPendingConnections|

$prototype=bool hasPendingConnections() const
$method=|bool|hasPendingConnections|

$prototype=QBluetoothSocket *nextPendingConnection()
$method=|QBluetoothSocket *|nextPendingConnection|

$prototype=QBluetoothAddress serverAddress() const
$method=|QBluetoothAddress|serverAddress|

$prototype=quint16 serverPort() const
$method=|quint16|serverPort|

$prototype=void setSecurityFlags(QBluetooth::SecurityFlags security)
$method=|void|setSecurityFlags|QBluetooth::SecurityFlags

$prototype=QBluetooth::SecurityFlags securityFlags() const
$method=|QBluetooth::SecurityFlags|securityFlags|

$prototype=QBluetoothServiceInfo::Protocol serverType() const
$method=|QBluetoothServiceInfo::Protocol|serverType|

$prototype=Error error() const
$method=|QBluetoothServer::Error|error|

%%
%% SIGNALS
%%

$prototype=void newConnection()
$signalMethod=|void|newConnection|

$prototype=void error( QBluetoothServer::Error error )
$signalMethod=|void|error,error,QOverload<QBluetoothServer::Error>|QBluetoothServer::Error

#pragma ENDDUMP
