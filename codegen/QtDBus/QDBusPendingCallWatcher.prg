%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QDBusPendingCall

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QDBusPendingCallWatcher(const QDBusPendingCall &call, QObject *parent = nullptr)
$constructor=|new|const QDBusPendingCall &,QObject *=nullptr

$deleteMethod

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=void waitForFinished()
$method=|void|waitForFinished|

%%
%% SIGNALS
%%

$prototype=void finished( QDBusPendingCallWatcher * self )
$signalMethod=|void|finished|QDBusPendingCallWatcher *

#pragma ENDDUMP
