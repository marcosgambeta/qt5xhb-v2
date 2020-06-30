%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Q3DObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DCamera(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~Q3DCamera()
$deleteMethod

%%
%% Q_PROPERTY(float xRotation READ xRotation WRITE setXRotation NOTIFY xRotationChanged)
%%

$prototypeV2=float xRotation() const

$prototypeV2=void setXRotation( float rotation )

%%
%% Q_PROPERTY(float yRotation READ yRotation WRITE setYRotation NOTIFY yRotationChanged)
%%

$prototypeV2=float yRotation() const

$prototypeV2=void setYRotation( float rotation )

%%
%% Q_PROPERTY(float zoomLevel READ zoomLevel WRITE setZoomLevel NOTIFY zoomLevelChanged)
%%

$prototypeV2=float zoomLevel() const

$prototypeV2=void setZoomLevel( float zoomLevel )

%%
%% Q_PROPERTY(CameraPreset cameraPreset READ cameraPreset WRITE setCameraPreset NOTIFY cameraPresetChanged)
%%

$prototypeV2=Q3DCamera::CameraPreset cameraPreset() const

$prototypeV2=void setCameraPreset( Q3DCamera::CameraPreset preset )

%%
%% Q_PROPERTY(bool wrapXRotation READ wrapXRotation WRITE setWrapXRotation NOTIFY wrapXRotationChanged)
%%

$prototypeV2=bool wrapXRotation() const

$prototypeV2=void setWrapXRotation( bool isEnabled )

%%
%% Q_PROPERTY(bool wrapYRotation READ wrapYRotation WRITE setWrapYRotation NOTIFY wrapYRotationChanged)
%%

$prototypeV2=bool wrapYRotation() const

$prototypeV2=void setWrapYRotation( bool isEnabled )

%%
%% Q_PROPERTY(QVector3D target READ target WRITE setTarget NOTIFY targetChanged REVISION 1)
%%

$prototypeV2=QVector3D target() const

$prototypeV2=void setTarget( const QVector3D & target )

%%
%% Q_PROPERTY(float minZoomLevel READ minZoomLevel WRITE setMinZoomLevel NOTIFY minZoomLevelChanged REVISION 1)
%%

$prototypeV2=float minZoomLevel() const

$prototypeV2=void setMinZoomLevel( float zoomLevel )

%%
%% Q_PROPERTY(float maxZoomLevel READ maxZoomLevel WRITE setMaxZoomLevel NOTIFY maxZoomLevelChanged REVISION 1)
%%

$prototypeV2=float maxZoomLevel() const

$prototypeV2=void setMaxZoomLevel( float zoomLevel )

%%
%%
%%

$prototypeV2=virtual void copyValuesFrom( const Q3DObject & source )

$prototypeV2=void setCameraPosition( float horizontal, float vertical, float zoom = 100.0f )

%%
%% SIGNALS
%%

$prototype=void cameraPresetChanged( Q3DCamera::CameraPreset preset )
$signalMethod=|void|cameraPresetChanged|Q3DCamera::CameraPreset

$prototype=void maxZoomLevelChanged( float zoomLevel )
$signalMethod=|void|maxZoomLevelChanged|float

$prototype=void minZoomLevelChanged( float zoomLevel )
$signalMethod=|void|minZoomLevelChanged|float

$prototype=void targetChanged( const QVector3D & target )
$signalMethod=|void|targetChanged|const QVector3D &

$prototype=void wrapXRotationChanged( bool isEnabled )
$signalMethod=|void|wrapXRotationChanged|bool

$prototype=void wrapYRotationChanged( bool isEnabled )
$signalMethod=|void|wrapYRotationChanged|bool

$prototype=void xRotationChanged( float rotation )
$signalMethod=|void|xRotationChanged|float

$prototype=void yRotationChanged( float rotation )
$signalMethod=|void|yRotationChanged|float

$prototype=void zoomLevelChanged( float zoomLevel )
$signalMethod=|void|zoomLevelChanged|float

#pragma ENDDUMP
