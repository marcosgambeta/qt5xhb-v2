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

//[1]QBluetoothServiceInfo()
//[2]QBluetoothServiceInfo(const QBluetoothServiceInfo &other)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=bool isComplete() const
$method=|bool|isComplete|

$prototype=void setDevice(const QBluetoothDeviceInfo &info)
$method=|void|setDevice|const QBluetoothDeviceInfo &

$prototype=QBluetoothDeviceInfo device() const
$method=|QBluetoothDeviceInfo|device|

$prototype=void setAttribute(quint16 attributeId, const QVariant &value)
$internalMethod=|void|setAttribute,setAttribute1|quint16,const QVariant &

$prototype=void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
$internalMethod=|void|setAttribute,setAttribute2|quint16,const QBluetoothUuid &

$prototype=void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Sequence &value)

$prototype=void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Alternative &value)

//[1]void setAttribute(quint16 attributeId, const QVariant &value)
//[2]void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
//[3]void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Sequence &value)    // TODO: implementar
//[4]void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Alternative &value) // TODO: implementar

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setAttribute

$prototype=QVariant attribute(quint16 attributeId) const
$method=|QVariant|attribute|quint16

$prototype=QList<quint16> attributes() const
$method=|QList<quint16>|attributes|

$prototype=bool contains(quint16 attributeId) const
$method=|bool|contains|quint16

$prototype=void removeAttribute(quint16 attributeId)
$method=|void|removeAttribute|quint16

$prototype=void setServiceName(const QString &name)
$method=|void|setServiceName|const QString &

$prototype=QString serviceName() const
$method=|QString|serviceName|

$prototype=void setServiceDescription(const QString &description)
$method=|void|setServiceDescription|const QString &

$prototype=QString serviceDescription() const
$method=|QString|serviceDescription|

$prototype=void setServiceProvider(const QString &provider)
$method=|void|setServiceProvider|const QString &

$prototype=QString serviceProvider() const
$method=|QString|serviceProvider|

$prototype=QBluetoothServiceInfo::Protocol socketProtocol() const
$method=|QBluetoothServiceInfo::Protocol|socketProtocol|

$prototype=int protocolServiceMultiplexer() const
$method=|int|protocolServiceMultiplexer|

$prototype=int serverChannel() const
$method=|int|serverChannel|

$prototype=void setServiceAvailability(quint8 availability)
$method=|void|setServiceAvailability|quint8

$prototype=quint8 serviceAvailability() const
$method=|quint8|serviceAvailability|

$prototype=void setServiceUuid(const QBluetoothUuid &uuid)
$method=|void|setServiceUuid|const QBluetoothUuid &

$prototype=QBluetoothUuid serviceUuid() const
$method=|QBluetoothUuid|serviceUuid|

$prototype=QList<QBluetoothUuid> serviceClassUuids() const
$method=|QList<QBluetoothUuid>|serviceClassUuids|

$prototype=bool isRegistered() const
$method=|bool|isRegistered|

$prototype=bool registerService(const QBluetoothAddress &localAdapter = QBluetoothAddress())
$method=|bool|registerService|const QBluetoothAddress &=QBluetoothAddress()

$prototype=bool unregisterService()
$method=|bool|unregisterService|

$extraMethods

#pragma ENDDUMP
