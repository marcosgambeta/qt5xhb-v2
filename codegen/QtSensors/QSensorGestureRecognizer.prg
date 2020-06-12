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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual QString id() const = 0

$prototypeV2=virtual bool isActive() = 0

$prototypeV2=void startBackend()

$prototypeV2=void stopBackend()

$prototypeV2=void createBackend()

$prototypeV2=QStringList gestureSignals() const

%%
%% SIGNALS
%%

$prototype=void detected( const QString & s )
$signalMethod=|void|detected|const QString &

#pragma ENDDUMP
