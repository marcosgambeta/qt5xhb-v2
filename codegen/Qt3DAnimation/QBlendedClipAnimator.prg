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

$beginClassFrom=Qt3DAnimation::QAbstractClipAnimator

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QBlendedClipAnimator(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QBlendedClipAnimator(QBlendedClipAnimatorPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QBlendedClipAnimator()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DAnimation::QAbstractClipBlendNode *blendTree READ blendTree WRITE setBlendTree NOTIFY blendTreeChanged)
%%

$prototypeV2=QAbstractClipBlendNode * blendTree() const

$prototypeV2=void setBlendTree( QAbstractClipBlendNode * blendTree ) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

%%
%% SIGNALS
%%

$prototype=void blendTreeChanged( QAbstractClipBlendNode * blendTree )
$signalMethod=|void|blendTreeChanged|QAbstractClipBlendNode *

#pragma ENDDUMP
