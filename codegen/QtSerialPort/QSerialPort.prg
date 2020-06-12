%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialPort
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QIODevice

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSerialPort(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QSerialPort(const QString &name, QObject *parent = nullptr)
$internalConstructor=|new2|const QString &,QObject *=nullptr

$prototype=QSerialPort(const QSerialPortInfo &info, QObject *parent = nullptr)
$internalConstructor=|new3|const QSerialPortInfo &,QObject *=nullptr

/*
[1]QSerialPort(QObject *parent = nullptr)
[2]QSerialPort(const QString &name, QObject *parent = nullptr)
[3]QSerialPort(const QSerialPortInfo &info, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QSERIALPORT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSerialPort_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QSerialPort_new2();
  }
  else if( ISBETWEEN(1,2) && ISQSERIALPORTINFO(1) && ISOPTQOBJECT(2) )
  {
    QSerialPort_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod

$prototype=void setPortName(const QString &name)
$method=|void|setPortName|const QString &

$prototypeV2=QString portName() const

$prototype=void setPort(const QSerialPortInfo &info)
$method=|void|setPort|const QSerialPortInfo &

$prototype=bool open(OpenMode mode) Q_DECL_OVERRIDE
$method=|bool|open|QIODevice::OpenMode

$prototypeV2=void close() Q_DECL_OVERRIDE

$prototype=void setSettingsRestoredOnClose(bool restore)
$method=|void|setSettingsRestoredOnClose|bool

$prototypeV2=bool settingsRestoredOnClose() const

$prototype=bool setBaudRate(qint32 baudRate, Directions dir = AllDirections)
$method=|bool|setBaudRate|qint32,QSerialPort::Directions=QSerialPort::AllDirections

$prototype=qint32 baudRate(Directions dir = AllDirections) const
$method=|qint32|baudRate|QSerialPort::Directions=QSerialPort::AllDirections

$prototype=bool setDataBits(DataBits dataBits)
$method=|bool|setDataBits|QSerialPort::DataBits

$prototypeV2=QSerialPort::DataBits dataBits() const

$prototype=bool setParity(Parity parity)
$method=|bool|setParity|QSerialPort::Parity

$prototypeV2=QSerialPort::Parity parity() const

$prototype=bool setStopBits(StopBits stopBits)
$method=|bool|setStopBits|QSerialPort::StopBits

$prototypeV2=QSerialPort::StopBits stopBits() const

$prototype=bool setFlowControl(FlowControl flow)
$method=|bool|setFlowControl|QSerialPort::FlowControl

$prototypeV2=QSerialPort::FlowControl flowControl() const

$prototype=bool setDataTerminalReady(bool set)
$method=|bool|setDataTerminalReady|bool

$prototypeV2=bool isDataTerminalReady()

$prototype=bool setRequestToSend(bool set)
$method=|bool|setRequestToSend|bool

$prototypeV2=bool isRequestToSend()

$prototypeV2=QSerialPort::PinoutSignals pinoutSignals()

$prototypeV2=bool flush()

$prototype=bool clear(Directions dir = AllDirections)
$method=|bool|clear|QSerialPort::Directions=QSerialPort::AllDirections

$prototypeV2=bool atEnd() const Q_DECL_OVERRIDE

$prototype=bool setDataErrorPolicy(DataErrorPolicy policy = IgnorePolicy)
$method=|bool|setDataErrorPolicy|QSerialPort::DataErrorPolicy=QSerialPort::IgnorePolicy

$prototypeV2=QSerialPort::DataErrorPolicy dataErrorPolicy() const

$prototypeV2=QSerialPort::SerialPortError error() const

$prototypeV2=void clearError()

$prototypeV2=qint64 readBufferSize() const

$prototype=void setReadBufferSize(qint64 size)
$method=|void|setReadBufferSize|qint64

$prototypeV2=bool isSequential() const Q_DECL_OVERRIDE

$prototypeV2=qint64 bytesAvailable() const Q_DECL_OVERRIDE

$prototypeV2=qint64 bytesToWrite() const Q_DECL_OVERRIDE

$prototypeV2=bool canReadLine() const Q_DECL_OVERRIDE

$prototype=bool waitForReadyRead(int msecs) Q_DECL_OVERRIDE
$method=|bool|waitForReadyRead|int

$prototype=bool waitForBytesWritten(int msecs) Q_DECL_OVERRIDE
$method=|bool|waitForBytesWritten|int

$prototype=bool sendBreak(int duration = 0)
$method=|bool|sendBreak|int=0

$prototype=bool setBreakEnabled(bool set = true)
$method=|bool|setBreakEnabled|bool=true

%%
%% SIGNALS
%%

$prototype=void baudRateChanged( qint32 baudRate, QSerialPort::Directions dir )
$signalMethod=|void|baudRateChanged|qint32,QSerialPort::Directions

$prototype=void dataBitsChanged( QSerialPort::DataBits dataBits )
$signalMethod=|void|dataBitsChanged|QSerialPort::DataBits

$prototype=void parityChanged( QSerialPort::Parity parity )
$signalMethod=|void|parityChanged|QSerialPort::Parity

$prototype=void stopBitsChanged( QSerialPort::StopBits stopBits )
$signalMethod=|void|stopBitsChanged|QSerialPort::StopBits

$prototype=void flowControlChanged( QSerialPort::FlowControl flow )
$signalMethod=|void|flowControlChanged|QSerialPort::FlowControl

$prototype=void dataErrorPolicyChanged( QSerialPort::DataErrorPolicy policy )
$signalMethod=|void|dataErrorPolicyChanged|QSerialPort::DataErrorPolicy

$prototype=void dataTerminalReadyChanged( bool set )
$signalMethod=|void|dataTerminalReadyChanged|bool

$prototype=void requestToSendChanged( bool set )
$signalMethod=|void|requestToSendChanged|bool

$prototype=void error( QSerialPort::SerialPortError serialPortError )
$signalMethod=|void|error,error,QOverload<QSerialPort::SerialPortError>|QSerialPort::SerialPortError

$prototype=void settingsRestoredOnCloseChanged( bool restore )
$signalMethod=|void|settingsRestoredOnCloseChanged|bool

#pragma ENDDUMP
