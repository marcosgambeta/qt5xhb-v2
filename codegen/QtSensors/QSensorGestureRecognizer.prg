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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QString id() const = 0
$virtualMethod=|QString|id|

$prototype=virtual bool isActive() = 0
$virtualMethod=|bool|isActive|

$prototype=void startBackend()
$method=|void|startBackend|

$prototype=void stopBackend()
$method=|void|stopBackend|

$prototype=void createBackend()
$method=|void|createBackend|

$prototype=QStringList gestureSignals() const
$method=|QStringList|gestureSignals|

%%
%% SIGNALS
%%

$prototype=void detected( const QString & s )
$signalMethod=|void|detected|const QString &

#pragma ENDDUMP
