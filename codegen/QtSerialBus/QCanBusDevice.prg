%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QCanBusFrame readFrame()
$method=|QCanBusFrame|readFrame|

$prototype=qint64 framesAvailable() const
$method=|qint64|framesAvailable|

$prototype=qint64 framesToWrite() const
$method=|qint64|framesToWrite|

$prototype=virtual bool waitForFramesWritten(int msecs)
$virtualMethod=|bool|waitForFramesWritten|int

$prototype=virtual bool waitForFramesReceived(int msecs)
$virtualMethod=|bool|waitForFramesReceived|int

$prototype=bool connectDevice()
$method=|bool|connectDevice|

$prototype=void disconnectDevice()
$method=|void|disconnectDevice|

$prototype=CanBusDeviceState state() const
$method=|QCanBusDevice::CanBusDeviceState|state|

$prototype=CanBusError error() const
$method=|QCanBusDevice::CanBusError|error|

$prototype=QString errorString() const
$method=|QString|errorString|

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
