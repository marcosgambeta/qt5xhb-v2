%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

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

#include <QtCore/QState>
#include <QtCore/QStateMachine>

$deleteMethod

$prototypeV2=QStateMachine * machine() const

$prototypeV2=QState * parentState() const

%%
%% SIGNALS
%%

$prototype=void entered()
$signalMethod=|void|entered|

$prototype=void exited()
$signalMethod=|void|exited|

#pragma ENDDUMP
