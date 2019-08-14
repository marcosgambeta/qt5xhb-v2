%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=int value() const
$method=|int|value|

$prototype=void setValue(int value)
$method=|void|setValue|int

$prototype=int minimum() const
$method=|int|minimum|

$prototype=void setMinimum(int minimum)
$method=|void|setMinimum|int

$prototype=int maximum() const
$method=|int|maximum|

$prototype=void setMaximum(int maximum)
$method=|void|setMaximum|int

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototype=bool isPaused() const
$method=|bool|isPaused|

$prototype=void setPaused(bool paused)
$method=|void|setPaused|bool

$prototype=bool isStopped() const
$method=|bool|isStopped|

$prototype=void setRange(int minimum, int maximum)
$method=|void|setRange|int,int

$prototype=void reset()
$method=|void|reset|

$prototype=void show()
$method=|void|show|

$prototype=void hide()
$method=|void|hide|

$prototype=void pause()
$method=|void|pause|

$prototype=void resume()
$method=|void|resume|

$prototype=void stop()
$method=|void|stop|

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
