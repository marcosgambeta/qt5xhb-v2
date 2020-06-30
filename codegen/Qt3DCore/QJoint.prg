%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QNode

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QJoint(Qt3DCore::QNode *parent = nullptr)
$constructor=|new|Qt3DCore::QNode *=nullptr

$prototype=~QJoint()
$deleteMethod

%%
%% Q_PROPERTY(QVector3D scale READ scale WRITE setScale NOTIFY scaleChanged)
%%

$prototypeV2=QVector3D scale() const

$prototypeV2=void setScale( const QVector3D & scale ) (slot)

%%
%% Q_PROPERTY(QQuaternion rotation READ rotation WRITE setRotation NOTIFY rotationChanged)
%%

$prototypeV2=QQuaternion rotation() const

$prototypeV2=void setRotation( const QQuaternion & rotation ) (slot)

%%
%% Q_PROPERTY(QVector3D translation READ translation WRITE setTranslation NOTIFY translationChanged)
%%

$prototypeV2=QVector3D translation() const

$prototypeV2=void setTranslation( const QVector3D & translation ) (slot)

%%
%% Q_PROPERTY(QMatrix4x4 inverseBindMatrix READ inverseBindMatrix WRITE setInverseBindMatrix NOTIFY inverseBindMatrixChanged)
%%

$prototypeV2=QMatrix4x4 inverseBindMatrix() const

$prototypeV2=void setInverseBindMatrix( const QMatrix4x4 & inverseBindMatrix ) (slot)

%%
%% Q_PROPERTY(float rotationX READ rotationX WRITE setRotationX NOTIFY rotationXChanged)
%%

$prototypeV2=float rotationX() const

$prototypeV2=void setRotationX( float rotationX ) (slot)

%%
%% Q_PROPERTY(float rotationY READ rotationY WRITE setRotationY NOTIFY rotationYChanged)
%%

$prototypeV2=float rotationY() const

$prototypeV2=void setRotationY( float rotationY ) (slot)

%%
%% Q_PROPERTY(float rotationZ READ rotationZ WRITE setRotationZ NOTIFY rotationZChanged)
%%

$prototypeV2=float rotationZ() const

$prototypeV2=void setRotationZ( float rotationZ ) (slot)

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototypeV2=QString name() const

$prototypeV2=void setName( const QString & name ) (slot)

%%
%%
%%

$prototypeV2=void addChildJoint( QJoint * joint )

$prototypeV2=void removeChildJoint( QJoint * joint )

$prototypeV2=QVector<QJoint *> childJoints() const

$prototypeV2=void setToIdentity() (slot)

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const override [private]

%%
%% SIGNALS
%%

$prototype=void scaleChanged( const QVector3D & scale )
$signalMethod=|void|scaleChanged|const QVector3D &

$prototype=void rotationChanged( const QQuaternion & rotation )
$signalMethod=|void|rotationChanged|const QQuaternion &

$prototype=void translationChanged( const QVector3D & translation )
$signalMethod=|void|translationChanged|const QVector3D &

$prototype=void inverseBindMatrixChanged( const QMatrix4x4 & inverseBindMatrix )
$signalMethod=|void|inverseBindMatrixChanged|const QMatrix4x4 &

$prototype=void rotationXChanged( float rotationX )
$signalMethod=|void|rotationXChanged|float

$prototype=void rotationYChanged( float rotationY )
$signalMethod=|void|rotationYChanged|float

$prototype=void rotationZChanged( float rotationZ )
$signalMethod=|void|rotationZChanged|float

$prototype=void nameChanged( const QString & name )
$signalMethod=|void|nameChanged|const QString &

#pragma ENDDUMP
