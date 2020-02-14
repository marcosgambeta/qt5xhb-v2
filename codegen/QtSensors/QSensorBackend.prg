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

$prototype=virtual void start() = 0
$virtualMethod=|void|start|

$prototype=virtual void stop() = 0
$virtualMethod=|void|stop|

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

$prototype=QSensorReading *reading() const
$method=|QSensorReading *|reading|

$prototype=QSensor *sensor() const
$method=|QSensor *|sensor|

$prototype=void newReadingAvailable()
$method=|void|newReadingAvailable|

$prototype=void sensorStopped()
$method=|void|sensorStopped|

$prototype=void sensorBusy()
$method=|void|sensorBusy|

$prototype=void sensorError(int error)
$method=|void|sensorError|int

#pragma ENDDUMP
