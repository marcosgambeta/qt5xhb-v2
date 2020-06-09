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

$prototype=QElapsedTimer()
$constructor=|new|

$deleteMethod

$prototypeV2=qint64 elapsed() const

$prototype=bool hasExpired(qint64 timeout) const
$method=|bool|hasExpired|qint64

$prototypeV2=void invalidate()

$prototypeV2=bool isValid() const

$prototypeV2=qint64 msecsSinceReference() const

$prototype=qint64 msecsTo(const QElapsedTimer & other) const
$method=|qint64|msecsTo|const QElapsedTimer &

$prototypeV2=qint64 nsecsElapsed() const

$prototypeV2=qint64 restart()

$prototype=qint64 secsTo(const QElapsedTimer & other) const
$method=|qint64|secsTo|const QElapsedTimer &

$prototypeV2=void start()

$prototypeV2=static QElapsedTimer::ClockType clockType()

$prototypeV2=static bool isMonotonic()

$extraMethods

#pragma ENDDUMP
