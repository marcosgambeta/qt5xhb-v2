%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus
$added=5,8,0

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

$prototype=explicit QModbusDevice(QObject *parent = nullptr)
$prototype=QModbusDevice(QModbusDevicePrivate &dd, QObject *parent = nullptr) [protected]

$prototype=~QModbusDevice()
$deleteMethod

$prototype=QVariant connectionParameter(int parameter) const

$prototype=void setConnectionParameter(int parameter, const QVariant &value)

$prototypeV2=bool connectDevice()

$prototypeV2=void disconnectDevice()

$prototypeV2=QModbusDevice::State state() const

$prototypeV2=QModbusDevice::Error error() const

$prototypeV2=QString errorString() const

$prototype=void setState(QModbusDevice::State newState) [protected]

$prototype=void setError(const QString &errorText, QModbusDevice::Error error) [protected]

$prototype=virtual bool open() = 0 [protected]

$prototype=virtual void close() = 0 [protected]

%%
%% SIGNALS
%%

$prototype=void errorOccurred( QModbusDevice::Error error )
$signalMethod=|void|errorOccurred|QModbusDevice::Error

$prototype=void stateChanged( QModbusDevice::State state )
$signalMethod=|void|stateChanged|QModbusDevice::State

#pragma ENDDUMP
