%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus
$added=5,8,0

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

#include <QtCore/QVariant>
#include <QtCore/QVector>

$prototype=explicit QCanBusDevice(QObject *parent = nullptr) [abstract]
%% $constructor=|new|QObject *=nullptr

%% $deleteMethod

$prototype=virtual void setConfigurationParameter(int key, const QVariant &value)
$virtualMethod=|void|setConfigurationParameter|int,const QVariant &

$prototype=QVariant configurationParameter(int key) const
$method=|QVariant|configurationParameter|int

$prototype=QVector<int> configurationKeys() const
$method=|QVector<int>|configurationKeys|

$prototype=virtual bool writeFrame(const QCanBusFrame &frame) = 0
$virtualMethod=|bool|writeFrame|const QCanBusFrame &

$prototypeV2=QCanBusFrame readFrame()

$prototypeV2=qint64 framesAvailable() const

$prototypeV2=qint64 framesToWrite() const

$prototype=virtual bool waitForFramesWritten(int msecs)
$virtualMethod=|bool|waitForFramesWritten|int

$prototype=virtual bool waitForFramesReceived(int msecs)
$virtualMethod=|bool|waitForFramesReceived|int

$prototypeV2=bool connectDevice()

$prototypeV2=void disconnectDevice()

$prototypeV2=QCanBusDevice::CanBusDeviceState state() const

$prototypeV2=QCanBusDevice::CanBusError error() const

$prototypeV2=QString errorString() const

$prototype=virtual QString interpretErrorFrame(const QCanBusFrame &errorFrame) = 0
$virtualMethod=|QString|interpretErrorFrame|const QCanBusFrame &

$prototype=void QCanBusDevice::clear(QCanBusDevice::Directions direction)
$method=5,12,0|void|clear|QCanBusDevice::Directions

$prototype=QVector<QCanBusFrame> QCanBusDevice::readAllFrames()
$method=5,12,0|QVector<QCanBusFrame>|readAllFrames|

%%
%% SIGNALS
%%

$prototype=void errorOccurred( QCanBusDevice::CanBusError )
$signalMethod=|void|errorOccurred|QCanBusDevice::CanBusError

$prototype=void framesReceived()
$signalMethod=|void|framesReceived|

$prototype=void framesWritten( qint64 framesCount )
$signalMethod=|void|framesWritten|qint64

$prototype=void stateChanged( QCanBusDevice::CanBusDeviceState state )
$signalMethod=|void|stateChanged|QCanBusDevice::CanBusDeviceState

#pragma ENDDUMP
