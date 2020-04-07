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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBluetoothHostInfo()
$internalConstructor=|new1|

$prototype=QBluetoothHostInfo(const QBluetoothHostInfo &other)
$internalConstructor=|new2|const QBluetoothHostInfo &

/*
[1]QBluetoothHostInfo()
[2]QBluetoothHostInfo(const QBluetoothHostInfo &other)
*/

HB_FUNC_STATIC( QBLUETOOTHHOSTINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothHostInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHHOSTINFO(1) )
  {
    QBluetoothHostInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QBluetoothAddress address() const
$method=|QBluetoothAddress|address|

$prototype=void setAddress(const QBluetoothAddress &address)
$method=|void|setAddress|const QBluetoothAddress &

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$extraMethods

#pragma ENDDUMP
