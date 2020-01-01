%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

//[1]QBluetoothDeviceDiscoveryAgent(QObject *parent = nullptr)
//[2]QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = nullptr)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QBluetoothDeviceDiscoveryAgent::InquiryType inquiryType() const
$method=|QBluetoothDeviceDiscoveryAgent::InquiryType|inquiryType|

$prototype=void setInquiryType(QBluetoothDeviceDiscoveryAgent::InquiryType type)
$method=|void|setInquiryType|QBluetoothDeviceDiscoveryAgent::InquiryType

$prototype=bool isActive() const
$method=|bool|isActive|

$prototype=Error error() const
$method=|QBluetoothDeviceDiscoveryAgent::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=QList<QBluetoothDeviceInfo> discoveredDevices() const
$method=|QList<QBluetoothDeviceInfo>|discoveredDevices|

$prototype=void start()
$method=|void|start|

$prototype=void stop()
$method=|void|stop|

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
