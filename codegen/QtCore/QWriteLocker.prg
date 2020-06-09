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

$prototype=QWriteLocker(QReadWriteLock * lock)
$constructor=|new|QReadWriteLock *

$deleteMethod

$prototypeV2=QReadWriteLock * readWriteLock() const

$prototypeV2=void relock()

$prototypeV2=void unlock()

$extraMethods

#pragma ENDDUMP
