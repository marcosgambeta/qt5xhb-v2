%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus
$added=5,9,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCanBusDeviceInfo() = delete
%% TODO: deleted ?
%% $internalConstructor=|new1|

$prototype=QCanBusDeviceInfo(const QCanBusDeviceInfo &other)
$internalConstructor=|new2|const QCanBusDeviceInfo &

$prototype=explicit QCanBusDeviceInfo(QCanBusDeviceInfoPrivate &dd) [private]

/*
[1]QCanBusDeviceInfo() = delete
[2]QCanBusDeviceInfo(const QCanBusDeviceInfo &other)
*/

HB_FUNC_STATIC( QCANBUSDEVICEINFO_NEW )
{
%%  if( ISNUMPAR(0) )
%%  {
%%    QCanBusDeviceInfo_new1();
%%  }
%%  else if( ISNUMPAR(1) && ISQCANBUSDEVICEINFO(1) )
  if( ISNUMPAR(1) && ISQCANBUSDEVICEINFO(1) )
  {
    QCanBusDeviceInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QCanBusDeviceInfo()
$deleteMethod

$prototype=void swap(QCanBusDeviceInfo &other) Q_DECL_NOTHROW
$method=|void|swap|QCanBusDeviceInfo &

$prototypeV2=QString name() const

$prototypeV2=bool hasFlexibleDataRate() const

$prototypeV2=bool isVirtual() const

$prototype=int QCanBusDeviceInfo::channel() const
$method=5,11,0|int|channel|

$prototype=QString QCanBusDeviceInfo::description() const
$method=5,11,0|QString|description|

$prototype=QString QCanBusDeviceInfo::serialNumber() const
$method=5,11,0|QString|serialNumber|

#pragma ENDDUMP
