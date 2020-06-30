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

$beginClassFrom=Qt3DCore::QComponent

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAbstractClipAnimator(Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=QAbstractClipAnimator(QAbstractClipAnimatorPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QAbstractClipAnimator()
$deleteMethod

%%
%% Q_PROPERTY(bool running READ isRunning WRITE setRunning NOTIFY runningChanged)
%%

$prototypeV2=bool isRunning() const

$prototypeV2=void setRunning( bool running ) (slot)

%%
%% Q_PROPERTY(int loops READ loopCount WRITE setLoopCount NOTIFY loopCountChanged)
%%

$prototypeV2=int loopCount() const

$prototypeV2=void setLoopCount( int loops ) (slot)

%%
%% Q_PROPERTY(Qt3DAnimation::QChannelMapper *channelMapper READ channelMapper WRITE setChannelMapper NOTIFY channelMapperChanged)
%%

$prototypeV2=Qt3DAnimation::QChannelMapper * channelMapper() const

$prototypeV2=void setChannelMapper( Qt3DAnimation::QChannelMapper * channelMapper ) (slot)

%%
%% Q_PROPERTY(Qt3DAnimation::QClock *clock READ clock WRITE setClock NOTIFY clockChanged)
%%

$prototypeV2=Qt3DAnimation::QClock * clock() const

$prototypeV2=void setClock( Qt3DAnimation::QClock * clock ) (slot)

%%
%%
%%

$prototypeV2=void start() (slot)

$prototypeV2=void stop() (slot)

%%
%% SIGNALS
%%

$prototype=void runningChanged( bool running )
$signalMethod=|void|runningChanged|bool

$prototype=void channelMapperChanged( Qt3DAnimation::QChannelMapper * channelMapper )
$signalMethod=|void|channelMapperChanged|Qt3DAnimation::QChannelMapper *

$prototype=void loopCountChanged( int loops )
$signalMethod=|void|loopCountChanged|int

$prototype=void clockChanged( Qt3DAnimation::QClock * clock )
$signalMethod=|void|clockChanged|Qt3DAnimation::QClock *

#pragma ENDDUMP
