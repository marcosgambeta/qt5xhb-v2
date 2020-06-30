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

$prototype=QTimeLine ( int duration = 1000, QObject * parent = nullptr )
$constructor=|new|int=1000,QObject *=nullptr

$deleteMethod

$prototypeV2=int currentFrame() const

$prototypeV2=int currentTime() const

$prototypeV2=qreal currentValue() const

$prototypeV2=QTimeLine::CurveShape curveShape() const

$prototypeV2=QTimeLine::Direction direction() const

$prototypeV2=int duration() const

$prototypeV2=int endFrame() const

$prototypeV2=int frameForTime( int msec ) const

$prototypeV2=int loopCount() const

$prototypeV2=void setCurveShape( QTimeLine::CurveShape shape )

$prototypeV2=void setDirection( QTimeLine::Direction direction )

$prototypeV2=void setDuration( int duration )

$prototypeV2=void setEasingCurve( const QEasingCurve & curve )

$prototypeV2=void setEndFrame( int frame )

$prototypeV2=void setFrameRange( int startFrame, int endFrame )

$prototypeV2=void setLoopCount( int count )

$prototypeV2=void setStartFrame( int frame )

$prototypeV2=void setUpdateInterval( int interval )

$prototypeV2=int startFrame() const

$prototypeV2=QTimeLine::State state() const

$prototypeV2=int updateInterval() const

$prototypeV2=virtual qreal valueForTime( int msec ) const

$prototypeV2=void resume()

$prototypeV2=void setCurrentTime( int msec )

$prototypeV2=void setPaused( bool paused )

$prototypeV2=void start()

$prototypeV2=void stop()

$prototypeV2=void toggleDirection()

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void frameChanged( int frame )
$signalMethod=|void|frameChanged|int

$prototype=void stateChanged( QTimeLine::State newState )
$signalMethod=|void|stateChanged|QTimeLine::State

$prototype=void valueChanged( qreal value )
$signalMethod=|void|valueChanged|qreal

#pragma ENDDUMP
