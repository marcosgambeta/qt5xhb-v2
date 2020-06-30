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

#include <QtBluetooth/QBluetoothDeviceInfo>

$prototype=QBluetoothServiceInfo()
$internalConstructor=|new1|

$prototype=QBluetoothServiceInfo(const QBluetoothServiceInfo &other)
$internalConstructor=|new2|const QBluetoothServiceInfo &

/*
[1]QBluetoothServiceInfo()
[2]QBluetoothServiceInfo(const QBluetoothServiceInfo &other)
*/

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothServiceInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHSERVICEINFO(1) )
  {
    QBluetoothServiceInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=bool isComplete() const

$prototypeV2=void setDevice( const QBluetoothDeviceInfo & info )

$prototypeV2=QBluetoothDeviceInfo device() const

$prototype=void setAttribute(quint16 attributeId, const QVariant &value)
$internalMethod=|void|setAttribute,setAttribute1|quint16,const QVariant &

$prototype=void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
$internalMethod=|void|setAttribute,setAttribute2|quint16,const QBluetoothUuid &

$prototype=void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Sequence &value)

$prototype=void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Alternative &value)

/*
[1]void setAttribute(quint16 attributeId, const QVariant &value)
[2]void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
[3]void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Sequence &value)    // TODO: implementar
[4]void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Alternative &value) // TODO: implementar
*/

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETATTRIBUTE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
  {
    QBluetoothServiceInfo_setAttribute1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQBLUETOOTHUUID(2) )
  {
    QBluetoothServiceInfo_setAttribute2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setAttribute

$prototypeV2=QVariant attribute( quint16 attributeId ) const

$prototypeV2=QList<quint16> attributes() const

$prototypeV2=bool contains( quint16 attributeId ) const

$prototypeV2=void removeAttribute( quint16 attributeId )

$prototypeV2=void setServiceName( const QString & name )

$prototypeV2=QString serviceName() const

$prototypeV2=void setServiceDescription( const QString & description )

$prototypeV2=QString serviceDescription() const

$prototypeV2=void setServiceProvider( const QString & provider )

$prototypeV2=QString serviceProvider() const

$prototypeV2=QBluetoothServiceInfo::Protocol socketProtocol() const

$prototypeV2=int protocolServiceMultiplexer() const

$prototypeV2=int serverChannel() const

$prototypeV2=void setServiceAvailability( quint8 availability )

$prototypeV2=quint8 serviceAvailability() const

$prototypeV2=void setServiceUuid( const QBluetoothUuid & uuid )

$prototypeV2=QBluetoothUuid serviceUuid() const

$prototypeV2=QList<QBluetoothUuid> serviceClassUuids() const

$prototypeV2=bool isRegistered() const

$prototypeV2=bool registerService( const QBluetoothAddress & localAdapter = QBluetoothAddress() )

$prototypeV2=bool unregisterService()

$extraMethods

#pragma ENDDUMP
