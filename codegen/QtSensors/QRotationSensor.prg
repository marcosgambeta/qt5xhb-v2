%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QRotationReading *reading() const
$method=|QRotationReading *|reading|

$prototype=bool hasZ() const
$method=|bool|hasZ|

$prototype=void setHasZ(bool hasZ)
$method=|void|setHasZ|bool

%%
%% SIGNALS
%%

$prototype=void hasZChanged( bool hasZ )
$signalMethod=|void|hasZChanged|bool

#pragma ENDDUMP
