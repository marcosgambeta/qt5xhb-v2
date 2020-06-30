%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DCore::QNode

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QClock(Qt3DCore::QNode *parent = nullptr)
$prototype=QClock(QClockPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QClock()
$deleteMethod

%%
%% Q_PROPERTY(double playbackRate READ playbackRate WRITE setPlaybackRate NOTIFY playbackRateChanged)
%%

$prototypeV2=double playbackRate() const

$prototypeV2=void setPlaybackRate( double playbackRate )

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

%%
%% SIGNALS
%%

$prototype=void playbackRateChanged( double playbackRate )
$signalMethod=|void|playbackRateChanged|double

#pragma ENDDUMP
