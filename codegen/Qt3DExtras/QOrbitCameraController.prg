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

$beginClassFrom=QAbstractCameraController

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QOrbitCameraController(Qt3DCore::QNode *parent = nullptr)
$prototype=QOrbitCameraController(QOrbitCameraControllerPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QOrbitCameraController()
$deleteMethod

%%
%% Q_PROPERTY(float zoomInLimit READ zoomInLimit WRITE setZoomInLimit NOTIFY zoomInLimitChanged)
%%

$prototypeV2=float zoomInLimit() const

$prototypeV2=void setZoomInLimit( float zoomInLimit )

%%
%%
%%

$prototype=void moveCamera(const QAbstractCameraController::InputState &state, float dt) override [private]

%%
%% SIGNALS
%%

$prototype=void zoomInLimitChanged()

#pragma ENDDUMP
