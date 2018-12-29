%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QVector<float> framePositions() const
$prototype=void setFramePositions(const QVector<float> &positions) (slot)

%%
%% Q_PROPERTY(Qt3DCore::QTransform *target READ target WRITE setTarget NOTIFY targetChanged)
%%

$prototype=Qt3DCore::QTransform *target() const
$prototype=void setTarget(Qt3DCore::QTransform *target) (slot)

%%
%% Q_PROPERTY(QEasingCurve easing READ easing WRITE setEasing NOTIFY easingChanged)
%%

$prototype=QEasingCurve easing() const
$prototype=void setEasing(const QEasingCurve &easing) (slot)

%%
%% Q_PROPERTY(QString targetName READ targetName WRITE setTargetName NOTIFY targetNameChanged)
%%

$prototype=QString targetName() const
$prototype=void setTargetName(const QString &name) (slot)

%%
%% Q_PROPERTY(QKeyframeAnimation::RepeatMode startMode READ startMode WRITE setStartMode NOTIFY startModeChanged)
%%

$prototype=RepeatMode startMode() const
$prototype=void setStartMode(RepeatMode mode) (slot)

%%
%% Q_PROPERTY(QKeyframeAnimation::RepeatMode endMode READ endMode WRITE setEndMode NOTIFY endModeChanged)
%%

$prototype=RepeatMode endMode() const
$prototype=void setEndMode(RepeatMode mode) (slot)

%%
%%
%%

$prototype=QVector<Qt3DCore::QTransform *> keyframeList() const
$prototype=void setKeyframes(const QVector<Qt3DCore::QTransform *> &keyframes)
$prototype=void addKeyframe(Qt3DCore::QTransform *keyframe)
$prototype=void removeKeyframe(Qt3DCore::QTransform *keyframe)
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
