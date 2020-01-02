%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensor

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccelerometer(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=AccelerationMode accelerationMode() const
$method=|QAccelerometer::AccelerationMode|accelerationMode|

$prototype=void setAccelerationMode(AccelerationMode accelerationMode)
$method=|void|setAccelerationMode|QAccelerometer::AccelerationMode

$prototype=QAccelerometerReading *reading() const
$method=|QAccelerometerReading *|reading|

%%
%% SIGNALS
%%

$prototype=void accelerationModeChanged( QAccelerometer::AccelerationMode accelerationMode )
$signalMethod=|void|accelerationModeChanged|QAccelerometer::AccelerationMode

#pragma ENDDUMP
