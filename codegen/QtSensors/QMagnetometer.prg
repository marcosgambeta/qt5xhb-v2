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

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMAGNETOMETERREADING
#endif

$beginClassFrom=QSensor

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMagnetometer(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QMagnetometerReading * reading() const

$prototypeV2=bool returnGeoValues() const

$prototype=void setReturnGeoValues(bool returnGeoValues)
$method=|void|setReturnGeoValues|bool

%%
%% SIGNALS
%%

$prototype=void returnGeoValuesChanged( bool returnGeoValues )
$signalMethod=|void|returnGeoValuesChanged|bool

#pragma ENDDUMP
