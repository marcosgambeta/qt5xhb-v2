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

$prototype=explicit QMorphingAnimation(QObject *parent = nullptr)

$deleteMethod

%%
%% Q_PROPERTY(QVector<float> targetPositions READ targetPositions WRITE setTargetPositions NOTIFY targetPositionsChanged)
%%

$prototypeV2=QVector<float> targetPositions() const

$prototypeV2=void setTargetPositions( const QVector<float> & targetPositions ) (slot)

%%
%% Q_PROPERTY(float interpolator READ interpolator NOTIFY interpolatorChanged)
%%

$prototypeV2=float interpolator() const

%%
%% Q_PROPERTY(Qt3DRender::QGeometryRenderer *target READ target WRITE setTarget NOTIFY targetChanged)
%%

$prototypeV2=Qt3DRender::QGeometryRenderer * target() const

$prototypeV2=void setTarget( Qt3DRender::QGeometryRenderer * target ) (slot)

%%
%% Q_PROPERTY(QString targetName READ targetName WRITE setTargetName NOTIFY targetNameChanged)
%%

$prototypeV2=QString targetName() const

$prototypeV2=void setTargetName( const QString name ) (slot)

%%
%% Q_PROPERTY(QMorphingAnimation::Method method READ method WRITE setMethod NOTIFY methodChanged)
%%

$prototypeV2=QMorphingAnimation::Method method() const

$prototypeV2=void setMethod( QMorphingAnimation::Method method ) (slot)

%%
%% Q_PROPERTY(QEasingCurve easing READ easing WRITE setEasing NOTIFY easingChanged)
%%

$prototypeV2=QEasingCurve easing() const

$prototypeV2=void setEasing( const QEasingCurve & easing ) (slot)

%%
%%
%%

$prototypeV2=void setMorphTargets( const QVector<Qt3DAnimation::QMorphTarget *> & targets )

$prototypeV2=void addMorphTarget( Qt3DAnimation::QMorphTarget * target )

$prototypeV2=void removeMorphTarget( Qt3DAnimation::QMorphTarget * target )

$prototypeV2=void setWeights( int positionIndex, const QVector<float> & weights )

$prototypeV2=QVector<float> getWeights( int positionIndex )

$prototypeV2=QVector<Qt3DAnimation::QMorphTarget *> morphTargetList()

$prototype=void updateAnimation(float position) [private]

%%
%% SIGNALS
%%

$prototype=void targetPositionsChanged( const QVector<float> & targetPositions )
$signalMethod=|void|targetPositionsChanged|const QVector<float> &

$prototype=void interpolatorChanged( float interpolator )
$signalMethod=|void|interpolatorChanged|float

$prototype=void targetChanged( Qt3DRender::QGeometryRenderer * target )
$signalMethod=|void|targetChanged|Qt3DRender::QGeometryRenderer *

$prototype=void targetNameChanged( const QString & name )
$signalMethod=|void|targetNameChanged|const QString &

$prototype=void methodChanged( QMorphingAnimation::Method method )
$signalMethod=|void|methodChanged|QMorphingAnimation::Method

$prototype=void easingChanged( const QEasingCurve & easing )
$signalMethod=|void|easingChanged|const QEasingCurve &

#pragma ENDDUMP
