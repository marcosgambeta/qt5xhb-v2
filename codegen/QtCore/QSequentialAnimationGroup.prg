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

$beginClassFrom=QAnimationGroup

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QPauseAnimation>

$prototype=QSequentialAnimationGroup ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=QPauseAnimation * addPause ( int msecs )
$method=|QPauseAnimation *|addPause|int

$prototype=QAbstractAnimation * currentAnimation () const
$method=|QAbstractAnimation *|currentAnimation|

$prototype=QPauseAnimation * insertPause ( int index, int msecs )
$method=|QPauseAnimation *|insertPause|int,int

$prototype=virtual int duration () const
$virtualMethod=|int|duration|

%%
%% SIGNALS
%%

$prototype=void currentAnimationChanged ( QAbstractAnimation * current )
$signalMethod=|void|currentAnimationChanged|QAbstractAnimation *

#pragma ENDDUMP
