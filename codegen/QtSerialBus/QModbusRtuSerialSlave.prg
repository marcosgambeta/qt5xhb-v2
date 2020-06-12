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

$beginClassFrom=QModbusServer

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QModbusRtuSerialSlave(QObject *parent = nullptr)
$prototype=QModbusRtuSerialSlave(QModbusRtuSerialSlavePrivate &dd, QObject *parent = nullptr) [protected]

$prototype=~QModbusRtuSerialSlave()
$deleteMethod

$prototypeV2=bool processesBroadcast() const override

$prototype=bool open() override [protected]

$prototype=void close() override [protected]

$prototype=QModbusResponse processRequest(const QModbusPdu &request) override [protected]

#pragma ENDDUMP
