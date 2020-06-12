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

$prototype=QSensor(const QByteArray &type, QObject *parent = nullptr)
$constructor=|new|const QByteArray &,QObject *=nullptr

$deleteMethod

$prototypeV2=QByteArray identifier() const

$prototype=void setIdentifier(const QByteArray &identifier)
$method=|void|setIdentifier|const QByteArray &

$prototypeV2=QByteArray type() const

$prototypeV2=bool connectToBackend()

$prototypeV2=bool isConnectedToBackend() const

$prototypeV2=bool isBusy() const

$prototype=void setActive(bool active)
$method=|void|setActive|bool

$prototypeV2=bool isActive() const

$prototypeV2=bool isAlwaysOn() const

$prototype=void setAlwaysOn(bool alwaysOn)
$method=|void|setAlwaysOn|bool

$prototypeV2=bool skipDuplicates() const

$prototype=void setSkipDuplicates(bool skipDuplicates)
$method=|void|setSkipDuplicates|bool

$prototype=qrangelist availableDataRates() const
%% TODO: implementar
%% $method=|qrangelist|availableDataRates|

$prototypeV2=int dataRate() const

$prototype=void setDataRate(int rate)
$method=|void|setDataRate|int

$prototype=qoutputrangelist outputRanges() const
%% TODO: implementar
%% $method=|qoutputrangelist|outputRanges|

$prototypeV2=int outputRange() const

$prototype=void setOutputRange(int index)
$method=|void|setOutputRange|int

$prototypeV2=QString description() const

$prototypeV2=int error() const

$prototype=void addFilter(QSensorFilter *filter)
$method=|void|addFilter|QSensorFilter *

$prototype=void removeFilter(QSensorFilter *filter)
$method=|void|removeFilter|QSensorFilter *

$prototype=QList<QSensorFilter*> filters() const
%% TODO: implementar
%% $method=|QList<QSensorFilter *>|filters|

$prototypeV2=QSensorReading * reading() const

$prototype=bool isFeatureSupported(Feature feature) const
$method=|bool|isFeatureSupported|QSensor::Feature

$prototypeV2=QSensor::AxesOrientationMode axesOrientationMode() const

$prototype=void setAxesOrientationMode(AxesOrientationMode axesOrientationMode)
$method=|void|setAxesOrientationMode|QSensor::AxesOrientationMode

$prototypeV2=int currentOrientation() const

$prototype=void setCurrentOrientation(int currentOrientation)
$method=|void|setCurrentOrientation|int

$prototypeV2=int userOrientation() const

$prototype=void setUserOrientation(int userOrientation)
$method=|void|setUserOrientation|int

$prototypeV2=int maxBufferSize() const

$prototype=void setMaxBufferSize(int maxBufferSize)
$method=|void|setMaxBufferSize|int

$prototypeV2=int efficientBufferSize() const

$prototype=void setEfficientBufferSize(int efficientBufferSize)
$method=|void|setEfficientBufferSize|int

$prototypeV2=int bufferSize() const

$prototype=void setBufferSize(int bufferSize)
$method=|void|setBufferSize|int

$prototypeV2=bool start()

$prototypeV2=void stop()

$prototype=static QList<QByteArray> sensorTypes()
$staticMethod=|QList<QByteArray>|sensorTypes|

$prototype=static QList<QByteArray> sensorsForType(const QByteArray &type)
$staticMethod=|QList<QByteArray>|sensorsForType|const QByteArray &

$prototype=static QByteArray defaultSensorForType(const QByteArray &type)
$staticMethod=|QByteArray|defaultSensorForType|const QByteArray &

%%
%% SIGNALS
%%

$prototype=void busyChanged()
$signalMethod=|void|busyChanged|

$prototype=void activeChanged()
$signalMethod=|void|activeChanged|

$prototype=void readingChanged()
$signalMethod=|void|readingChanged|

$prototype=void sensorError( int error )
$signalMethod=|void|sensorError|int

$prototype=void availableSensorsChanged()
$signalMethod=|void|availableSensorsChanged|

$prototype=void alwaysOnChanged()
$signalMethod=|void|alwaysOnChanged|

$prototype=void dataRateChanged()
$signalMethod=|void|dataRateChanged|

$prototype=void skipDuplicatesChanged( bool skipDuplicates )
$signalMethod=|void|skipDuplicatesChanged|bool

$prototype=void axesOrientationModeChanged( QSensor::AxesOrientationMode axesOrientationMode )
$signalMethod=|void|axesOrientationModeChanged|QSensor::AxesOrientationMode

$prototype=void currentOrientationChanged( int currentOrientation )
$signalMethod=|void|currentOrientationChanged|int

$prototype=void userOrientationChanged( int userOrientation )
$signalMethod=|void|userOrientationChanged|int

$prototype=void maxBufferSizeChanged( int maxBufferSize )
$signalMethod=|void|maxBufferSizeChanged|int

$prototype=void efficientBufferSizeChanged( int efficientBufferSize )
$signalMethod=|void|efficientBufferSizeChanged|int

$prototype=void bufferSizeChanged( int bufferSize )
$signalMethod=|void|bufferSizeChanged|int

#pragma ENDDUMP
