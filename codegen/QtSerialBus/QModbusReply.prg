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

$prototype=QModbusReply(ReplyType type, int serverAddress, QObject *parent = nullptr)

%% $deleteMethod

$prototypeV2=QModbusReply::ReplyType type() const

$prototypeV2=int serverAddress() const

$prototypeV2=bool isFinished() const

$prototypeV2=QModbusDataUnit result() const

$prototypeV2=QModbusResponse rawResult() const

$prototypeV2=QString errorString() const

$prototypeV2=QModbusDevice::Error error() const

$prototype=void setResult(const QModbusDataUnit &unit)

$prototype=void setRawResult(const QModbusResponse &unit)

$prototype=void setFinished(bool isFinished)

$prototype=void setError(QModbusDevice::Error error, const QString &errorText)

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void errorOccurred( QModbusDevice::Error error )
$signalMethod=|void|errorOccurred|QModbusDevice::Error

#pragma ENDDUMP
