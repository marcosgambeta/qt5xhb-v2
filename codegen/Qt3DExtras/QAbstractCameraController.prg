%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DCore::QEntity

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAbstractCameraController(Qt3DCore::QNode *parent = nullptr) [protected]
$prototype=QAbstractCameraController(QAbstractCameraControllerPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QAbstractCameraController()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DRender::QCamera *camera READ camera WRITE setCamera NOTIFY cameraChanged)
%%

$prototype=Qt3DRender::QCamera *camera() const
$prototype=void setCamera(Qt3DRender::QCamera *camera)

%%
%% Q_PROPERTY(float linearSpeed READ linearSpeed WRITE setLinearSpeed NOTIFY linearSpeedChanged)
%%

$prototype=float linearSpeed() const
$prototype=void setLinearSpeed(float linearSpeed)

%%
%% Q_PROPERTY(float lookSpeed READ lookSpeed WRITE setLookSpeed NOTIFY lookSpeedChanged)
%%

$prototype=float lookSpeed() const
$prototype=void setLookSpeed(float lookSpeed)

%%
%% Q_PROPERTY(float acceleration READ acceleration WRITE setAcceleration NOTIFY accelerationChanged)
%%

$prototype=float acceleration() const
$prototype=void setAcceleration(float acceleration)

%%
%% Q_PROPERTY(float deceleration READ deceleration WRITE setDeceleration NOTIFY decelerationChanged)
%%

$prototype=float deceleration() const
$prototype=void setDeceleration(float deceleration)

%%
%%
%%

$prototype=Qt3DInput::QKeyboardDevice *keyboardDevice() const [protected]
$prototype=Qt3DInput::QMouseDevice *mouseDevice() const [protected]
$prototype=virtual void moveCamera(const InputState &state, float dt) = 0 [private]

%%
%% SIGNALS
%%

$prototype=void cameraChanged()
$signalMethod=|void|cameraChanged|

$prototype=void linearSpeedChanged()
$signalMethod=|void|linearSpeedChanged|

$prototype=void lookSpeedChanged()
$signalMethod=|void|lookSpeedChanged|

$prototype=void accelerationChanged( float acceleration )
$signalMethod=|void|accelerationChanged|float

$prototype=void decelerationChanged( float deceleration )
$signalMethod=|void|decelerationChanged|float

#pragma ENDDUMP
