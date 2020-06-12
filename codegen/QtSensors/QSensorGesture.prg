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

$prototype=QSensorGesture(const QStringList &ids, QObject *parent = nullptr)
$constructor=|new|const QStringList &,QObject *=nullptr

$deleteMethod

$prototypeV2=bool isActive()

$prototypeV2=QStringList validIds() const

$prototypeV2=QStringList invalidIds() const

$prototypeV2=QStringList gestureSignals() const

$prototypeV2=void startDetection()

$prototypeV2=void stopDetection()

%%
%% SIGNALS
%%

$prototype=void detected( QString s )
%% TODO: $signalMethod=|void|detected|QString

#pragma ENDDUMP
