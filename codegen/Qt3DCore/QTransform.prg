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

$beginClassFrom=QComponent

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QTransform(QNode *parent = nullptr)
$constructor=|new|QNode *=nullptr

$prototype=explicit QTransform(QTransformPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=~QTransform()
$deleteMethod

%%
%% Q_PROPERTY(QMatrix4x4 matrix READ matrix WRITE setMatrix NOTIFY matrixChanged)
%%

$prototypeV2=QMatrix4x4 matrix() const

$prototypeV2=void setMatrix( const QMatrix4x4 & matrix )

%%
%% Q_PROPERTY(float scale READ scale WRITE setScale NOTIFY scaleChanged)
%%

$prototypeV2=float scale() const

$prototypeV2=void setScale( float scale )

%%
%% Q_PROPERTY(QVector3D scale3D READ scale3D WRITE setScale3D NOTIFY scale3DChanged)
%%

$prototypeV2=QVector3D scale3D() const

$prototypeV2=void setScale3D( const QVector3D & scale )

%%
%% Q_PROPERTY(QQuaternion rotation READ rotation WRITE setRotation NOTIFY rotationChanged)
%%

$prototypeV2=QQuaternion rotation() const

$prototypeV2=void setRotation( const QQuaternion & rotation )

%%
%% Q_PROPERTY(QVector3D translation READ translation WRITE setTranslation NOTIFY translationChanged)
%%

$prototypeV2=QVector3D translation() const

$prototypeV2=void setTranslation( const QVector3D & translation )

%%
%% Q_PROPERTY(float rotationX READ rotationX WRITE setRotationX NOTIFY rotationXChanged)
%%

$prototypeV2=float rotationX() const

$prototypeV2=void setRotationX( float rotationX )

%%
%% Q_PROPERTY(float rotationY READ rotationY WRITE setRotationY NOTIFY rotationYChanged)
%%

$prototypeV2=float rotationY() const

$prototypeV2=void setRotationY( float rotationY )

%%
%% Q_PROPERTY(float rotationZ READ rotationZ WRITE setRotationZ NOTIFY rotationZChanged)
%%

$prototypeV2=float rotationZ() const

$prototypeV2=void setRotationZ( float rotationZ )

%%
%%
%%

$prototype=Q_INVOKABLE static QQuaternion fromAxisAndAngle(const QVector3D &axis, float angle)
$staticMethod=|QQuaternion|fromAxisAndAngle,fromAxisAndAngle1|const QVector3D &,float

$prototype=Q_INVOKABLE static QQuaternion fromAxisAndAngle(float x, float y, float z, float angle)
$staticMethod=|QQuaternion|fromAxisAndAngle,fromAxisAndAngle2|float,float,float,float

//[1]Q_INVOKABLE static QQuaternion fromAxisAndAngle(const QVector3D &axis, float angle)
//[2]Q_INVOKABLE static QQuaternion fromAxisAndAngle(float x, float y, float z, float angle)

HB_FUNC_STATIC( QTRANSFORM_FROMAXISANDANGLE )
{
%% TODO: implementar
}

$prototype=Q_INVOKABLE static QQuaternion fromAxesAndAngles(const QVector3D &axis1, float angle1, const QVector3D &axis2, float angle2)
$staticMethod=|QQuaternion|fromAxesAndAngles,fromAxesAndAngles1|const QVector3D &,float,const QVector3D &,float

$prototype=Q_INVOKABLE static QQuaternion fromAxesAndAngles(const QVector3D &axis1, float angle1, const QVector3D &axis2, float angle2, const QVector3D &axis3, float angle3)
$staticMethod=|QQuaternion|fromAxesAndAngles,fromAxesAndAngles2|const QVector3D &,float,const QVector3D &,float,const QVector3D &,float

//[1]Q_INVOKABLE static QQuaternion fromAxesAndAngles(const QVector3D &axis1, float angle1, const QVector3D &axis2, float angle2)
//[2]Q_INVOKABLE static QQuaternion fromAxesAndAngles(const QVector3D &axis1, float angle1, const QVector3D &axis2, float angle2, const QVector3D &axis3, float angle3)

HB_FUNC_STATIC( QTRANSFORM_FROMAXESANDANGLES )
{
%% TODO: implementar
}

$prototype=Q_INVOKABLE static QQuaternion fromEulerAngles(const QVector3D &eulerAngles)
$staticMethod=|QQuaternion|fromEulerAngles,fromEulerAngles1|const QVector3D &

$prototype=Q_INVOKABLE static QQuaternion fromEulerAngles(float pitch, float yaw, float roll)
$staticMethod=|QQuaternion|fromEulerAngles,fromEulerAngles2|float,float,float

//[1]Q_INVOKABLE static QQuaternion fromEulerAngles(const QVector3D &eulerAngles)
//[2]Q_INVOKABLE static QQuaternion fromEulerAngles(float pitch, float yaw, float roll)

HB_FUNC_STATIC( QTRANSFORM_FROMEULERANGLES )
{
%% TODO: implementar
}

$prototypeV2=Q_INVOKABLE static QMatrix4x4 rotateAround( const QVector3D & point, float angle, const QVector3D & axis )

$prototype=QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

%%
%% SIGNALS
%%

$prototype=void scaleChanged( float scale )
$signalMethod=|void|scaleChanged|float

$prototype=void scale3DChanged( const QVector3D & scale )
$signalMethod=|void|scale3DChanged|const QVector3D &

$prototype=void rotationChanged( const QQuaternion & rotation )
$signalMethod=|void|rotationChanged|const QQuaternion &

$prototype=void translationChanged( const QVector3D & translation )
$signalMethod=|void|translationChanged|const QVector3D &

$prototype=void matrixChanged()
$signalMethod=|void|matrixChanged|

$prototype=void rotationXChanged( float rotationX )
$signalMethod=|void|rotationXChanged|float

$prototype=void rotationYChanged( float rotationY )
$signalMethod=|void|rotationYChanged|float

$prototype=void rotationZChanged( float rotationZ )
$signalMethod=|void|rotationZChanged|float

#pragma ENDDUMP
