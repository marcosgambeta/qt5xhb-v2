%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=explicit QFirstPersonCameraController(Qt3DCore::QNode *parent = nullptr)

$prototype=~QFirstPersonCameraController()
$deleteMethod

$prototype=void moveCamera(const QAbstractCameraController::InputState &state, float dt) override [private]

#pragma ENDDUMP
