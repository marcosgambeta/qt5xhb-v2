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

$prototype=QAnimationDriver(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=virtual void advance()

$prototypeV2=void install()

$prototypeV2=void uninstall()

$prototypeV2=bool isRunning() const

$prototypeV2=virtual qint64 elapsed() const

$prototype=void setStartTime(qint64 startTime)
$method=|void|setStartTime|qint64

$prototypeV2=qint64 startTime() const

%%
%% SIGNALS
%%

$prototype=void started()
$signalMethod=|void|started|

$prototype=void stopped()
$signalMethod=|void|stopped|

#pragma ENDDUMP
