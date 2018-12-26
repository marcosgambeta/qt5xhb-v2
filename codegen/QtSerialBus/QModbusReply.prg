%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=QModbusReply(ReplyType type, int serverAddress, QObject *parent = nullptr)

%% $deleteMethod

$prototype=ReplyType type() const

$prototype=int serverAddress() const

$prototype=bool isFinished() const

$prototype=QModbusDataUnit result() const

$prototype=QModbusResponse rawResult() const

$prototype=QString errorString() const

$prototype=QModbusDevice::Error error() const

$prototype=void setResult(const QModbusDataUnit &unit)

$prototype=void setRawResult(const QModbusResponse &unit)

$prototype=void setFinished(bool isFinished)

$prototype=void setError(QModbusDevice::Error error, const QString &errorText)

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=5,8,0|void|finished|

$prototype=void errorOccurred( QModbusDevice::Error error )
$signalMethod=5,8,0|void|errorOccurred|QModbusDevice::Error

#pragma ENDDUMP
