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

$endClass

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes=5,1,0

$prototype=QHolsterSensor(QObject *parent = nullptr)
$constructor=5,1,0|new|QObject *=nullptr

$deleteMethod=5,1,0

$prototype=QHolsterReading *reading() const
$method=5,1,0|QHolsterReading *|reading|

#pragma ENDDUMP
