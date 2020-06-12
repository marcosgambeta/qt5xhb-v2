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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QList <QSensorGestureRecognizer *> createRecognizers() = 0
$virtualMethod=|QList<QSensorGestureRecognizer *>|createRecognizers|

$prototypeV2=virtual QStringList supportedIds() const = 0

$prototypeV2=virtual QString name() const = 0

$extraMethods

#pragma ENDDUMP
