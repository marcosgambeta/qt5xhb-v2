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

$prototype=QBluetoothDeviceDiscoveryAgent(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = nullptr)
$internalConstructor=|new2|const QBluetoothAddress &,QObject *=nullptr

/*
[1]QBluetoothDeviceDiscoveryAgent(QObject *parent = nullptr)
[2]QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothDeviceDiscoveryAgent_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothDeviceDiscoveryAgent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QBluetoothDeviceDiscoveryAgent::InquiryType inquiryType() const

$prototypeV2=void setInquiryType( QBluetoothDeviceDiscoveryAgent::InquiryType type )

$prototypeV2=bool isActive() const

$prototypeV2=QBluetoothDeviceDiscoveryAgent::Error error() const

$prototypeV2=QString errorString() const

$prototypeV2=QList<QBluetoothDeviceInfo> discoveredDevices() const

$prototypeV2=void start()

$prototypeV2=void stop()

%%
%% SIGNALS
%%

$prototype=void deviceDiscovered( const QBluetoothDeviceInfo & info )
$signalMethod=|void|deviceDiscovered|const QBluetoothDeviceInfo &

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void error( QBluetoothDeviceDiscoveryAgent::Error error )
$signalMethod=|void|error,error,QOverload<QBluetoothDeviceDiscoveryAgent::Error>|QBluetoothDeviceDiscoveryAgent::Error

$prototype=void canceled()
$signalMethod=|void|canceled|

$prototype=void deviceUpdated(const QBluetoothDeviceInfo &info, QBluetoothDeviceInfo::Fields updatedFields)
$signalMethod=|void|deviceUpdated|const QBluetoothDeviceInfo &,QBluetoothDeviceInfo::Fields|#ifdef Q_OS_ANDROID

#pragma ENDDUMP
