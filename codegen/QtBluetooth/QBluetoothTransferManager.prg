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

#include <QtBluetooth/QBluetoothTransferReply>

$prototype=QBluetoothTransferManager(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QBluetoothTransferReply * put( const QBluetoothTransferRequest & request, QIODevice * data )

%%
%% SIGNALS
%%

$prototype=void finished( QBluetoothTransferReply * reply )
$signalMethod=|void|finished|QBluetoothTransferReply *

#pragma ENDDUMP
