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

$prototype=QBluetoothServiceDiscoveryAgent(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QBluetoothServiceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = nullptr)
$internalConstructor=|new2|const QBluetoothAddress &,QObject *=nullptr

/*
[1]QBluetoothServiceDiscoveryAgent(QObject *parent = nullptr)
[2]QBluetoothServiceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothServiceDiscoveryAgent_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothServiceDiscoveryAgent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isActive() const

$prototypeV2=QBluetoothDeviceDiscoveryAgent::Error error() const

$prototypeV2=QString errorString() const

$prototypeV2=QList<QBluetoothServiceInfo> discoveredServices() const

$prototype=void setUuidFilter(const QList<QBluetoothUuid> &uuids)
$internalMethod=|void|setUuidFilter,setUuidFilter1|const QList<QBluetoothUuid> &

$prototype=void setUuidFilter(const QBluetoothUuid &uuid)
$internalMethod=|void|setUuidFilter,setUuidFilter2|const QBluetoothUuid &

/*
[1]void setUuidFilter(const QList<QBluetoothUuid> &uuids)
[2]void setUuidFilter(const QBluetoothUuid &uuid)
*/

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETUUIDFILTER )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBluetoothServiceDiscoveryAgent_setUuidFilter1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHUUID(1) )
  {
    QBluetoothServiceDiscoveryAgent_setUuidFilter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setUuidFilter

$prototypeV2=QList<QBluetoothUuid> uuidFilter() const

$prototypeV2=bool setRemoteAddress( const QBluetoothAddress & address )

$prototypeV2=QBluetoothAddress remoteAddress() const

$prototypeV2=void start( QBluetoothServiceDiscoveryAgent::DiscoveryMode mode = QBluetoothServiceDiscoveryAgent::MinimalDiscovery )

$prototypeV2=void stop()

$prototypeV2=void clear()

%%
%% SIGNALS
%%

$prototype=void serviceDiscovered( const QBluetoothServiceInfo & info )
$signalMethod=|void|serviceDiscovered|const QBluetoothServiceInfo &

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void canceled()
$signalMethod=|void|canceled|

$prototype=void error( QBluetoothServiceDiscoveryAgent::Error error )
$signalMethod=|void|error,error,QOverload<QBluetoothServiceDiscoveryAgent::Error>|QBluetoothServiceDiscoveryAgent::Error

#pragma ENDDUMP
