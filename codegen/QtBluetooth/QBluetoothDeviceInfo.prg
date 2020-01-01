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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtBluetooth/QBluetoothAddress>
#include <QtBluetooth/QBluetoothUuid>

%% void _qt5xhb_convert_qlist_qbluetoothuuid_to_array ( const QList<QBluetoothUuid> list );

$prototype=QBluetoothDeviceInfo()
$internalConstructor=|new1|

$prototype=QBluetoothDeviceInfo(const QBluetoothAddress &address, const QString &name, quint32 classOfDevice)
$internalConstructor=|new2|const QBluetoothAddress &,const QString &,quint32

$prototype=QBluetoothDeviceInfo(const QBluetoothUuid &uuid, const QString &name, quint32 classOfDevice)
$internalConstructor=5,5,0|new3|const QBluetoothUuid &,const QString &,quint32

$prototype=QBluetoothDeviceInfo(const QBluetoothDeviceInfo &other)
$internalConstructor=|new4|const QBluetoothDeviceInfo &

//[1]QBluetoothDeviceInfo()
//[2]QBluetoothDeviceInfo(const QBluetoothAddress &address, const QString &name, quint32 classOfDevice)
//[3]QBluetoothDeviceInfo(const QBluetoothUuid &uuid, const QString &name, quint32 classOfDevice)
//[4]QBluetoothDeviceInfo(const QBluetoothDeviceInfo &other)

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothDeviceInfo_new1();
  }
  else if( ISNUMPAR(3) && ISQBLUETOOTHADDRESS(1) && ISCHAR(2) && ISNUM(3) )
  {
    QBluetoothDeviceInfo_new2();
  }
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  else if( ISNUMPAR(3) && ISQBLUETOOTHUUID(1) && ISCHAR(2) && ISNUM(3) )
  {
    QBluetoothDeviceInfo_new3();
  }
#endif
  else if( ISNUMPAR(1) && ISQBLUETOOTHDEVICEINFO(1) )
  {
    QBluetoothDeviceInfo_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=bool isCached() const
$method=|bool|isCached|

$prototype=void setCached(bool cached)
$method=|void|setCached|bool

$prototype=QBluetoothAddress address() const
$method=|QBluetoothAddress|address|

$prototype=QString name() const
$method=|QString|name|

$prototype=ServiceClasses serviceClasses() const
$method=|QBluetoothDeviceInfo::ServiceClasses|serviceClasses|

$prototype=MajorDeviceClass majorDeviceClass() const
$method=|QBluetoothDeviceInfo::MajorDeviceClass|majorDeviceClass|

$prototype=quint8 minorDeviceClass() const
$method=|quint8|minorDeviceClass|

$prototype=qint16 rssi() const
$method=|qint16|rssi|

$prototype=void setRssi(qint16 signal)
$method=|void|setRssi|qint16

$prototype=void setServiceUuids(const QList<QBluetoothUuid> &uuids, DataCompleteness completeness)
%% TODO: ausente na documentacao - verificar
$internalMethod=|void|setServiceUuids,setServiceUuids1|const QList<QBluetoothUuid> &,QBluetoothDeviceInfo::DataCompleteness

$prototype=void QBluetoothDeviceInfo::setServiceUuids(const QVector<QBluetoothUuid> &uuids)
$internalMethod=5,13,0|void|setServiceUuids,setServiceUuids2|const QVector<QBluetoothUuid> &

//[1]void setServiceUuids(const QList<QBluetoothUuid> &uuids, DataCompleteness completeness)
//[2]void QBluetoothDeviceInfo::setServiceUuids(const QVector<QBluetoothUuid> &uuids)

HB_FUNC_STATIC( QBLUETOOTHDEVICEINFO_SETSERVICEUUIDS )
{
  if( ISNUMPAR(2) && ISARRAY(1) && ISNUM(2) )
  {
    QBluetoothDeviceInfo_setServiceUuids1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBluetoothDeviceInfo_setServiceUuids2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QList<QBluetoothUuid> serviceUuids(DataCompleteness *completeness = nullptr) const
%% TODO: implementar
%% $method=|QList<QBluetoothUuid>|serviceUuids|QBluetoothDeviceInfo::DataCompleteness *=nullptr

$prototype=DataCompleteness serviceUuidsCompleteness() const
$method=|QBluetoothDeviceInfo::DataCompleteness|serviceUuidsCompleteness|

$prototype=QBluetoothDeviceInfo::CoreConfigurations coreConfigurations() const
$method=5,4,0|QBluetoothDeviceInfo::CoreConfigurations|coreConfigurations|

$prototype=void setCoreConfigurations(QBluetoothDeviceInfo::CoreConfigurations coreConfigs)
$method=5,4,0|void|setCoreConfigurations|QBluetoothDeviceInfo::CoreConfigurations

$prototype=QBluetoothUuid deviceUuid() const
$method=5,5,0|QBluetoothUuid|deviceUuid|

$prototype=void setDeviceUuid(const QBluetoothUuid &uuid)
$method=5,5,0|void|setDeviceUuid|const QBluetoothUuid &

$prototype=QByteArray manufacturerData(quint16 manufacturerId) const
$method=5,12,0|QByteArray|manufacturerData|quint16

$prototype=QHash<quint16, QByteArray> manufacturerData() const
%% TODO: implementar (Qt 5.12.0)

$prototype=bool setManufacturerData(quint16 manufacturerId, const QByteArray &data)
$method=5,12,0|bool|setManufacturerData|quint16,const QByteArray &

$prototype=QVector<quint16> manufacturerIds() const
$method=5,12,0|QVector<quint16>|manufacturerIds|

$extraMethods

#pragma ENDDUMP
