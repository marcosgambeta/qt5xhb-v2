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

#include <QtCore/QAnimationGroup>

$deleteMethod

$prototypeV2=int currentLoop() const

$prototypeV2=int currentLoopTime() const

$prototypeV2=int currentTime() const

$prototypeV2=void setCurrentTime( int msecs )

$prototypeV2=QAbstractAnimation::Direction direction() const

$prototypeV2=void setDirection( QAbstractAnimation::Direction direction )

$prototypeV2=virtual int duration() const = 0

$prototypeV2=QAnimationGroup * group() const

$prototypeV2=int loopCount() const

$prototypeV2=void setLoopCount( int loopCount )

$prototypeV2=QAbstractAnimation::State state() const

$prototypeV2=int totalDuration() const

$prototypeV2=void pause()

$prototypeV2=void resume()

$prototypeV2=void setPaused( bool paused )

$prototypeV2=void start( QAbstractAnimation::DeletionPolicy policy = QAbstractAnimation::KeepWhenStopped )

$prototypeV2=void stop()

%%
%% SIGNALS
%%

$prototype=void currentLoopChanged( int currentLoop )
$signalMethod=|void|currentLoopChanged|int

$prototype=void directionChanged( QAbstractAnimation::Direction newDirection )
$signalMethod=|void|directionChanged|QAbstractAnimation::Direction

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void stateChanged( QAbstractAnimation::State newState, QAbstractAnimation::State oldState )
$signalMethod=|void|stateChanged|QAbstractAnimation::State,QAbstractAnimation::State

#pragma ENDDUMP
