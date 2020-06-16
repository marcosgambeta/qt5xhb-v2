%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWinExtras
$added=5,2,0

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

$prototype=explicit QWinTaskbarProgress(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=int value() const

$prototype=void setValue(int value)
$method=|void|setValue|int

$prototypeV2=int minimum() const

$prototype=void setMinimum(int minimum)
$method=|void|setMinimum|int

$prototypeV2=int maximum() const

$prototype=void setMaximum(int maximum)
$method=|void|setMaximum|int

$prototypeV2=bool isVisible() const

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototypeV2=bool isPaused() const

$prototype=void setPaused(bool paused)
$method=|void|setPaused|bool

$prototypeV2=bool isStopped() const

$prototype=void setRange(int minimum, int maximum)
$method=|void|setRange|int,int

$prototypeV2=void reset()

$prototypeV2=void show()

$prototypeV2=void hide()

$prototypeV2=void pause()

$prototypeV2=void resume()

$prototypeV2=void stop()

%%
%% SIGNALS
%%

$prototype=void valueChanged( int value )
$signalMethod=|void|valueChanged|int

$prototype=void minimumChanged( int minimum )
$signalMethod=|void|minimumChanged|int

$prototype=void maximumChanged( int maximum )
$signalMethod=|void|maximumChanged|int

$prototype=void visibilityChanged( bool visible )
$signalMethod=|void|visibilityChanged|bool

$prototype=void pausedChanged( bool paused )
$signalMethod=|void|pausedChanged|bool

$prototype=void stoppedChanged( bool stopped )
$signalMethod=|void|stoppedChanged|bool

#pragma ENDDUMP
