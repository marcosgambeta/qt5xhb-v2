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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtBluetooth/QBluetoothTransferReply>

$prototype=QBluetoothTransferManager(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=QBluetoothTransferReply *put(const QBluetoothTransferRequest &request, QIODevice *data)
$method=|QBluetoothTransferReply *|put|const QBluetoothTransferRequest &,QIODevice *

%%
%% SIGNALS
%%

$prototype=void finished( QBluetoothTransferReply * reply )
$signalMethod=|void|finished|QBluetoothTransferReply *

#pragma ENDDUMP
