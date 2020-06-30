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

$beginClassFrom=QAbstractClipBlendNode

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAdditiveClipBlend(Qt3DCore::QNode *parent = nullptr)

$prototype=explicit QAdditiveClipBlend(QAdditiveClipBlendPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QAdditiveClipBlend()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DAnimation::QAbstractClipBlendNode *baseClip READ baseClip WRITE setBaseClip NOTIFY baseClipChanged)
%%

$prototypeV2=Qt3DAnimation::QAbstractClipBlendNode * baseClip() const

$prototypeV2=void setBaseClip( Qt3DAnimation::QAbstractClipBlendNode * baseClip ) (slot)

%%
%% Q_PROPERTY(Qt3DAnimation::QAbstractClipBlendNode *additiveClip READ additiveClip WRITE setAdditiveClip NOTIFY additiveClipChanged)
%%

$prototypeV2=Qt3DAnimation::QAbstractClipBlendNode * additiveClip() const

$prototypeV2=void setAdditiveClip( Qt3DAnimation::QAbstractClipBlendNode * additiveClip ) (slot)

%%
%% Q_PROPERTY(float additiveFactor READ additiveFactor WRITE setAdditiveFactor NOTIFY additiveFactorChanged)
%%

$prototypeV2=float additiveFactor() const

$prototypeV2=void setAdditiveFactor( float additiveFactor ) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

%%
%% SIGNALS
%%

$prototype=void additiveFactorChanged( float additiveFactor )
$signalMethod=|void|additiveFactorChanged|float

$prototype=void baseClipChanged( Qt3DAnimation::QAbstractClipBlendNode * baseClip )
$signalMethod=|void|baseClipChanged|Qt3DAnimation::QAbstractClipBlendNode *

$prototype=void additiveClipChanged( Qt3DAnimation::QAbstractClipBlendNode * additiveClip )
$signalMethod=|void|additiveClipChanged|Qt3DAnimation::QAbstractClipBlendNode *

#pragma ENDDUMP
