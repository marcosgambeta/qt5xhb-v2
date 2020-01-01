%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=explicit QLerpClipBlend(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QLerpClipBlend(QLerpClipBlendPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QLerpClipBlend()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DAnimation::QAbstractClipBlendNode *startClip READ startClip WRITE setStartClip NOTIFY startClipChanged)
%%

$prototype=Qt3DAnimation::QAbstractClipBlendNode *startClip() const
$prototype=void setStartClip(Qt3DAnimation::QAbstractClipBlendNode * startClip) (slot)

%%
%% Q_PROPERTY(Qt3DAnimation::QAbstractClipBlendNode *endClip READ endClip WRITE setEndClip NOTIFY endClipChanged)
%%

$prototype=Qt3DAnimation::QAbstractClipBlendNode *endClip() const
$prototype=void setEndClip(Qt3DAnimation::QAbstractClipBlendNode * endClip) (slot)

%%
%% Q_PROPERTY(float blendFactor READ blendFactor WRITE setBlendFactor NOTIFY blendFactorChanged)
%%

$prototype=float blendFactor() const
$prototype=void setBlendFactor(float blendFactor) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

%%
%% SIGNALS
%%

$prototype=void blendFactorChanged( float blendFactor )
$signalMethod=|void|blendFactorChanged|float

$prototype=void startClipChanged( Qt3DAnimation::QAbstractClipBlendNode * startClip )
$signalMethod=|void|startClipChanged|Qt3DAnimation::QAbstractClipBlendNode *

$prototype=void endClipChanged( Qt3DAnimation::QAbstractClipBlendNode * endClip )
$signalMethod=|void|endClipChanged|Qt3DAnimation::QAbstractClipBlendNode *

#pragma ENDDUMP
