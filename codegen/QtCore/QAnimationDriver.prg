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

$prototype=virtual void advance()
$virtualMethod=|void|advance|

$prototype=void install()
$method=|void|install|

$prototype=void uninstall()
$method=|void|uninstall|

$prototype=bool isRunning() const
$method=|bool|isRunning|

$prototype=virtual qint64 elapsed() const
$virtualMethod=|qint64|elapsed|

$prototype=void setStartTime(qint64 startTime)
$method=|void|setStartTime|qint64

$prototype=qint64 startTime() const
$method=|qint64|startTime|

%%
%% SIGNALS
%%

$prototype=void started()
$signalMethod=|void|started|

$prototype=void stopped()
$signalMethod=|void|stopped|

#pragma ENDDUMP
