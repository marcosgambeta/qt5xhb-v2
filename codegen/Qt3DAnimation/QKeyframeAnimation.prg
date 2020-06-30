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

$beginClassFrom=QAbstractAnimation

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QKeyframeAnimation(QObject *parent = nullptr)

$deleteMethod

%%
%% Q_PROPERTY(QVector<float> framePositions READ framePositions WRITE setFramePositions NOTIFY framePositionsChanged)
%%

$prototypeV2=QVector<float> framePositions() const

$prototypeV2=void setFramePositions( const QVector<float> & positions ) (slot)

%%
%% Q_PROPERTY(Qt3DCore::QTransform *target READ target WRITE setTarget NOTIFY targetChanged)
%%

$prototypeV2=Qt3DCore::QTransform * target() const

$prototypeV2=void setTarget( Qt3DCore::QTransform * target ) (slot)

%%
%% Q_PROPERTY(QEasingCurve easing READ easing WRITE setEasing NOTIFY easingChanged)
%%

$prototypeV2=QEasingCurve easing() const

$prototypeV2=void setEasing( const QEasingCurve & easing ) (slot)

%%
%% Q_PROPERTY(QString targetName READ targetName WRITE setTargetName NOTIFY targetNameChanged)
%%

$prototypeV2=QString targetName() const

$prototypeV2=void setTargetName( const QString & name ) (slot)

%%
%% Q_PROPERTY(QKeyframeAnimation::RepeatMode startMode READ startMode WRITE setStartMode NOTIFY startModeChanged)
%%

$prototypeV2=RepeatMode startMode() const

$prototypeV2=void setStartMode( RepeatMode mode ) (slot)

%%
%% Q_PROPERTY(QKeyframeAnimation::RepeatMode endMode READ endMode WRITE setEndMode NOTIFY endModeChanged)
%%

$prototypeV2=RepeatMode endMode() const

$prototypeV2=void setEndMode( RepeatMode mode ) (slot)

%%
%%
%%

$prototypeV2=QVector<Qt3DCore::QTransform *> keyframeList() const

$prototypeV2=void setKeyframes( const QVector<Qt3DCore::QTransform *> & keyframes )

$prototypeV2=void addKeyframe( Qt3DCore::QTransform * keyframe )

$prototypeV2=void removeKeyframe( Qt3DCore::QTransform * keyframe )

$prototype=void updateAnimation(float position) [private]

%%
%% SIGNALS
%%

$prototype=void framePositionsChanged( const QVector<float> & positions )
$signalMethod=|void|framePositionsChanged|const QVector<float> &

$prototype=void targetChanged( Qt3DCore::QTransform * target )
$signalMethod=|void|targetChanged|Qt3DCore::QTransform *

$prototype=void easingChanged( const QEasingCurve & easing )
$signalMethod=|void|easingChanged|const QEasingCurve &

$prototype=void targetNameChanged( const QString & name )
$signalMethod=|void|targetNameChanged|const QString &

$prototype=void startModeChanged( QKeyframeAnimation::RepeatMode startMode )
$signalMethod=|void|startModeChanged|QKeyframeAnimation::RepeatMode

$prototype=void endModeChanged( QKeyframeAnimation::RepeatMode endMode )
$signalMethod=|void|endModeChanged|QKeyframeAnimation::RepeatMode

#pragma ENDDUMP
