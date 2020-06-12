%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$includes=

$prototype=QRotationSensor(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QRotationReading * reading() const

$prototypeV2=bool hasZ() const

$prototype=void setHasZ(bool hasZ)
$method=|void|setHasZ|bool

%%
%% SIGNALS
%%

$prototype=void hasZChanged( bool hasZ )
$signalMethod=|void|hasZChanged|bool

#pragma ENDDUMP
