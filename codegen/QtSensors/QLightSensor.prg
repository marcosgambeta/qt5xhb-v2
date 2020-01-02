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

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLIGHTREADING
#endif

$beginClassFrom=QSensor

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLightSensor(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=QLightReading *reading() const
$method=|QLightReading *|reading|

$prototype=qreal fieldOfView() const
$method=|qreal|fieldOfView|

$prototype=void setFieldOfView(qreal fieldOfView)
$method=|void|setFieldOfView|qreal

%%
%% SIGNALS
%%

$prototype=void fieldOfViewChanged( qreal fieldOfView )
$signalMethod=|void|fieldOfViewChanged|qreal

#pragma ENDDUMP
