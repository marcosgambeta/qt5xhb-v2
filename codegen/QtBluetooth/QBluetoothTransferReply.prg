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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool isFinished() const = 0
$virtualMethod=|bool|isFinished|

$prototype=virtual bool isRunning() const = 0
$virtualMethod=|bool|isRunning|

$prototype=QBluetoothTransferManager *manager() const
$method=|QBluetoothTransferManager *|manager|

$prototype=virtual TransferError error() const = 0
$virtualMethod=|QBluetoothTransferReply::TransferError|error|

$prototype=virtual QString errorString() const = 0
$virtualMethod=|QString|errorString|

$prototype=QBluetoothTransferRequest request() const
$method=|QBluetoothTransferRequest|request|

$prototype=void abort()
$method=|void|abort|

%%
%% SIGNALS
%%

$prototype=void finished( QBluetoothTransferReply * r )
$signalMethod=|void|finished|QBluetoothTransferReply *

$prototype=void transferProgress( qint64 bytesTransferred, qint64 bytesTotal )
$signalMethod=|void|transferProgress|qint64,qint64

#pragma ENDDUMP
