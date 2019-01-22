%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensor

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QAccelerometer(QObject *parent = nullptr)
$constructor=5,1,0|new|QObject *=nullptr

$deleteMethod=5,1,0

$prototype=AccelerationMode accelerationMode() const
$method=5,1,0|QAccelerometer::AccelerationMode|accelerationMode|

$prototype=void setAccelerationMode(AccelerationMode accelerationMode)
$method=5,1,0|void|setAccelerationMode|QAccelerometer::AccelerationMode

$prototype=QAccelerometerReading *reading() const
$method=5,1,0|QAccelerometerReading *|reading|

%%
%% SIGNALS
%%

$prototype=void accelerationModeChanged( QAccelerometer::AccelerationMode accelerationMode )
$signalMethod=5,1,0|void|accelerationModeChanged|QAccelerometer::AccelerationMode

#pragma ENDDUMP
