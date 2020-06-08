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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual bool isFinished() const = 0

$prototypeV2=virtual bool isRunning() const = 0

$prototypeV2=QBluetoothTransferManager * manager() const

$prototypeV2=virtual QBluetoothTransferReply::TransferError error() const = 0

$prototypeV2=virtual QString errorString() const = 0

$prototypeV2=QBluetoothTransferRequest request() const

$prototypeV2=void abort()

%%
%% SIGNALS
%%

$prototype=void finished( QBluetoothTransferReply * r )
$signalMethod=|void|finished|QBluetoothTransferReply *

$prototype=void transferProgress( qint64 bytesTransferred, qint64 bytesTotal )
$signalMethod=|void|transferProgress|qint64,qint64

#pragma ENDDUMP
