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

$prototype=QBluetoothLocalDevice(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QBluetoothLocalDevice(const QBluetoothAddress &address, QObject *parent = nullptr)
$internalConstructor=|new2|const QBluetoothAddress &,QObject *=nullptr

//[1]QBluetoothLocalDevice(QObject *parent = nullptr)
//[2]QBluetoothLocalDevice(const QBluetoothAddress &address, QObject *parent = nullptr)

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothLocalDevice_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothLocalDevice_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void requestPairing(const QBluetoothAddress &address, Pairing pairing)
$method=|void|requestPairing|const QBluetoothAddress &,QBluetoothLocalDevice::Pairing

$prototype=Pairing pairingStatus(const QBluetoothAddress &address) const
$method=|QBluetoothLocalDevice::Pairing|pairingStatus|const QBluetoothAddress &

$prototype=void setHostMode(QBluetoothLocalDevice::HostMode mode)
$method=|void|setHostMode|QBluetoothLocalDevice::HostMode

$prototype=HostMode hostMode() const
$method=|QBluetoothLocalDevice::HostMode|hostMode|

$prototype=void powerOn()
$method=|void|powerOn|

$prototype=QString name() const
$method=|QString|name|

$prototype=QBluetoothAddress address() const
$method=|QBluetoothAddress|address|

$prototype=void pairingConfirmation(bool confirmation)
$method=|void|pairingConfirmation|bool

$prototype=static QList<QBluetoothHostInfo> allDevices()
$staticMethod=|QList<QBluetoothHostInfo>|allDevices|

%%
%% SIGNALS
%%

$prototype=void hostModeStateChanged( QBluetoothLocalDevice::HostMode state )
$signalMethod=|void|hostModeStateChanged|QBluetoothLocalDevice::HostMode

$prototype=void pairingFinished( const QBluetoothAddress & address, QBluetoothLocalDevice::Pairing pairing )
$signalMethod=|void|pairingFinished|const QBluetoothAddress &,QBluetoothLocalDevice::Pairing

$prototype=void pairingDisplayPinCode( const QBluetoothAddress & address, QString pin )
$signalMethod=|void|pairingDisplayPinCode|const QBluetoothAddress &,QString

$prototype=void pairingDisplayConfirmation( const QBluetoothAddress & address, QString pin )
$signalMethod=|void|pairingDisplayConfirmation|const QBluetoothAddress &,QString

$prototype=void error( QBluetoothLocalDevice::Error error )
$signalMethod=|void|error|QBluetoothLocalDevice::Error

#pragma ENDDUMP
