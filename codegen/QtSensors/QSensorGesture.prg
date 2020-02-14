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

$prototype=bool isActive()
$method=|bool|isActive|

$prototype=QStringList validIds() const
$method=|QStringList|validIds|

$prototype=QStringList invalidIds() const
$method=|QStringList|invalidIds|

$prototype=QStringList gestureSignals() const
$method=|QStringList|gestureSignals|

$prototype=void startDetection()
$method=|void|startDetection|

$prototype=void stopDetection()
$method=|void|stopDetection|

%%
%% SIGNALS
%%

$prototype=void detected( QString s )
%% TODO: $signalMethod=|void|detected|QString

#pragma ENDDUMP
