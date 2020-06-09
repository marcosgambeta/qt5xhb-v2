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

$prototype=int frameForTime ( int msec ) const
$method=|int|frameForTime|int

$prototypeV2=int loopCount() const

$prototype=void setCurveShape ( CurveShape shape )
$method=|void|setCurveShape|QTimeLine::CurveShape

$prototype=void setDirection ( Direction direction )
$method=|void|setDirection|QTimeLine::Direction

$prototype=void setDuration ( int duration )
$method=|void|setDuration|int

$prototype=void setEasingCurve ( const QEasingCurve & curve )
$method=|void|setEasingCurve|const QEasingCurve &

$prototype=void setEndFrame ( int frame )
$method=|void|setEndFrame|int

$prototype=void setFrameRange ( int startFrame, int endFrame )
$method=|void|setFrameRange|int,int

$prototype=void setLoopCount ( int count )
$method=|void|setLoopCount|int

$prototype=void setStartFrame ( int frame )
$method=|void|setStartFrame|int

$prototype=void setUpdateInterval ( int interval )
$method=|void|setUpdateInterval|int

$prototypeV2=int startFrame() const

$prototypeV2=QTimeLine::State state() const

$prototypeV2=int updateInterval() const

$prototype=virtual qreal valueForTime ( int msec ) const
$virtualMethod=|qreal|valueForTime|int

$prototypeV2=void resume()

$prototype=void setCurrentTime ( int msec )
$method=|void|setCurrentTime|int

$prototype=void setPaused ( bool paused )
$method=|void|setPaused|bool

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
