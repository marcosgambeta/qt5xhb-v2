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

$prototype=QByteArray identifier() const
$method=|QByteArray|identifier|

$prototype=void setIdentifier(const QByteArray &identifier)
$method=|void|setIdentifier|const QByteArray &

$prototype=QByteArray type() const
$method=|QByteArray|type|

$prototype=bool connectToBackend()
$method=|bool|connectToBackend|

$prototype=bool isConnectedToBackend() const
$method=|bool|isConnectedToBackend|

$prototype=bool isBusy() const
$method=|bool|isBusy|

$prototype=void setActive(bool active)
$method=|void|setActive|bool

$prototype=bool isActive() const
$method=|bool|isActive|

$prototype=bool isAlwaysOn() const
$method=|bool|isAlwaysOn|

$prototype=void setAlwaysOn(bool alwaysOn)
$method=|void|setAlwaysOn|bool

$prototype=bool skipDuplicates() const
$method=|bool|skipDuplicates|

$prototype=void setSkipDuplicates(bool skipDuplicates)
$method=|void|setSkipDuplicates|bool

$prototype=qrangelist availableDataRates() const
%% TODO: implementar
%% $method=|qrangelist|availableDataRates|

$prototype=int dataRate() const
$method=|int|dataRate|

$prototype=void setDataRate(int rate)
$method=|void|setDataRate|int

$prototype=qoutputrangelist outputRanges() const
%% TODO: implementar
%% $method=|qoutputrangelist|outputRanges|

$prototype=int outputRange() const
$method=|int|outputRange|

$prototype=void setOutputRange(int index)
$method=|void|setOutputRange|int

$prototype=QString description() const
$method=|QString|description|

$prototype=int error() const
$method=|int|error|

$prototype=void addFilter(QSensorFilter *filter)
$method=|void|addFilter|QSensorFilter *

$prototype=void removeFilter(QSensorFilter *filter)
$method=|void|removeFilter|QSensorFilter *

$prototype=QList<QSensorFilter*> filters() const
%% TODO: implementar
%% $method=|QList<QSensorFilter *>|filters|

$prototype=QSensorReading *reading() const
$method=|QSensorReading *|reading|

$prototype=bool isFeatureSupported(Feature feature) const
$method=|bool|isFeatureSupported|QSensor::Feature

$prototype=AxesOrientationMode axesOrientationMode() const
$method=|QSensor::AxesOrientationMode|axesOrientationMode|

$prototype=void setAxesOrientationMode(AxesOrientationMode axesOrientationMode)
$method=|void|setAxesOrientationMode|QSensor::AxesOrientationMode

$prototype=int currentOrientation() const
$method=|int|currentOrientation|

$prototype=void setCurrentOrientation(int currentOrientation)
$method=|void|setCurrentOrientation|int

$prototype=int userOrientation() const
$method=|int|userOrientation|

$prototype=void setUserOrientation(int userOrientation)
$method=|void|setUserOrientation|int

$prototype=int maxBufferSize() const
$method=|int|maxBufferSize|

$prototype=void setMaxBufferSize(int maxBufferSize)
$method=|void|setMaxBufferSize|int

$prototype=int efficientBufferSize() const
$method=|int|efficientBufferSize|

$prototype=void setEfficientBufferSize(int efficientBufferSize)
$method=|void|setEfficientBufferSize|int

$prototype=int bufferSize() const
$method=|int|bufferSize|

$prototype=void setBufferSize(int bufferSize)
$method=|void|setBufferSize|int

$prototype=bool start()
$method=|bool|start|

$prototype=void stop()
$method=|void|stop|

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
