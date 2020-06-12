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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual void start() = 0

$prototypeV2=virtual void stop() = 0

$prototype=virtual bool isFeatureSupported(QSensor::Feature feature) const
$virtualMethod=|bool|isFeatureSupported|QSensor::Feature

$prototype=void addDataRate(qreal min, qreal max)
$method=|void|addDataRate|qreal,qreal

$prototype=void setDataRates(const QSensor *otherSensor)
$method=|void|setDataRates|const QSensor *

$prototype=void addOutputRange(qreal min, qreal max, qreal accuracy)
$method=|void|addOutputRange|qreal,qreal,qreal

$prototype=void setDescription(const QString &description)
$method=|void|setDescription|const QString &

$prototypeV2=QSensorReading * reading() const

$prototypeV2=QSensor * sensor() const

$prototypeV2=void newReadingAvailable()

$prototypeV2=void sensorStopped()

$prototypeV2=void sensorBusy()

$prototype=void sensorError(int error)
$method=|void|sensorError|int

#pragma ENDDUMP
