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

$prototypeV2=bool hasExpired( qint64 timeout ) const

$prototypeV2=void invalidate()

$prototypeV2=bool isValid() const

$prototypeV2=qint64 msecsSinceReference() const

$prototypeV2=qint64 msecsTo( const QElapsedTimer & other ) const

$prototypeV2=qint64 nsecsElapsed() const

$prototypeV2=qint64 restart()

$prototypeV2=qint64 secsTo( const QElapsedTimer & other ) const

$prototypeV2=void start()

$prototypeV2=static QElapsedTimer::ClockType clockType()

$prototypeV2=static bool isMonotonic()

$extraMethods

#pragma ENDDUMP
