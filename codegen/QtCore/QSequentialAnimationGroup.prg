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

$prototypeV2=QPauseAnimation * addPause( int msecs )

$prototypeV2=QAbstractAnimation * currentAnimation() const

$prototypeV2=QPauseAnimation * insertPause( int index, int msecs )

$prototypeV2=virtual int duration() const

%%
%% SIGNALS
%%

$prototype=void currentAnimationChanged ( QAbstractAnimation * current )
$signalMethod=|void|currentAnimationChanged|QAbstractAnimation *

#pragma ENDDUMP
