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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBasicTimer ()
$constructor=|new|

$deleteMethod

$prototypeV2=bool isActive() const

$prototypeV2=void start( int msec, QObject * object )

$prototypeV2=void stop()

$prototypeV2=int timerId() const

$extraMethods

#pragma ENDDUMP
