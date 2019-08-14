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

$prototype=QSensorGestureManager(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=bool registerSensorGestureRecognizer(QSensorGestureRecognizer *recognizer)
$method=|bool|registerSensorGestureRecognizer|QSensorGestureRecognizer *

$prototype=QStringList gestureIds() const
$method=|QStringList|gestureIds|

$prototype=QStringList recognizerSignals(const QString &recognizerId) const
$method=|QStringList|recognizerSignals|const QString &

$prototype=static QSensorGestureRecognizer *sensorGestureRecognizer(const QString &id)
$staticMethod=|QSensorGestureRecognizer *|sensorGestureRecognizer|const QString &

%%
%% SIGNALS
%%

$prototype=void newSensorGestureAvailable()
$signalMethod=|void|newSensorGestureAvailable|

#pragma ENDDUMP
