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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod

$prototype=void setPortName(const QString &name)
$method=|void|setPortName|const QString &

$prototype=QString portName() const
$method=|QString|portName|

$prototype=void setPort(const QSerialPortInfo &info)
$method=|void|setPort|const QSerialPortInfo &

$prototype=bool open(OpenMode mode) Q_DECL_OVERRIDE
$method=|bool|open|QIODevice::OpenMode

$prototype=void close() Q_DECL_OVERRIDE
$method=|void|close|

$prototype=void setSettingsRestoredOnClose(bool restore)
$method=|void|setSettingsRestoredOnClose|bool

$prototype=bool settingsRestoredOnClose() const
$method=|bool|settingsRestoredOnClose|

$prototype=bool setBaudRate(qint32 baudRate, Directions dir = AllDirections)
$method=|bool|setBaudRate|qint32,QSerialPort::Directions=QSerialPort::AllDirections

$prototype=qint32 baudRate(Directions dir = AllDirections) const
$method=|qint32|baudRate|QSerialPort::Directions=QSerialPort::AllDirections

$prototype=bool setDataBits(DataBits dataBits)
$method=|bool|setDataBits|QSerialPort::DataBits

$prototype=DataBits dataBits() const
$method=|QSerialPort::DataBits|dataBits|

$prototype=bool setParity(Parity parity)
$method=|bool|setParity|QSerialPort::Parity

$prototype=Parity parity() const
$method=|QSerialPort::Parity|parity|

$prototype=bool setStopBits(StopBits stopBits)
$method=|bool|setStopBits|QSerialPort::StopBits

$prototype=StopBits stopBits() const
$method=|QSerialPort::StopBits|stopBits|

$prototype=bool setFlowControl(FlowControl flow)
$method=|bool|setFlowControl|QSerialPort::FlowControl

$prototype=FlowControl flowControl() const
$method=|QSerialPort::FlowControl|flowControl|

$prototype=bool setDataTerminalReady(bool set)
$method=|bool|setDataTerminalReady|bool

$prototype=bool isDataTerminalReady()
$method=|bool|isDataTerminalReady|

$prototype=bool setRequestToSend(bool set)
$method=|bool|setRequestToSend|bool

$prototype=bool isRequestToSend()
$method=|bool|isRequestToSend|

$prototype=PinoutSignals pinoutSignals()
$method=|QSerialPort::PinoutSignals|pinoutSignals|

$prototype=bool flush()
$method=|bool|flush|

$prototype=bool clear(Directions dir = AllDirections)
$method=|bool|clear|QSerialPort::Directions=QSerialPort::AllDirections

$prototype=bool atEnd() const Q_DECL_OVERRIDE
$method=|bool|atEnd|

$prototype=bool setDataErrorPolicy(DataErrorPolicy policy = IgnorePolicy)
$method=|bool|setDataErrorPolicy|QSerialPort::DataErrorPolicy=QSerialPort::IgnorePolicy

$prototype=DataErrorPolicy dataErrorPolicy() const
$method=|QSerialPort::DataErrorPolicy|dataErrorPolicy|

$prototype=SerialPortError error() const
$method=|QSerialPort::SerialPortError|error|

$prototype=void clearError()
$method=|void|clearError|

$prototype=qint64 readBufferSize() const
$method=|qint64|readBufferSize|

$prototype=void setReadBufferSize(qint64 size)
$method=|void|setReadBufferSize|qint64

$prototype=bool isSequential() const Q_DECL_OVERRIDE
$method=|bool|isSequential|

$prototype=qint64 bytesAvailable() const Q_DECL_OVERRIDE
$method=|qint64|bytesAvailable|

$prototype=qint64 bytesToWrite() const Q_DECL_OVERRIDE
$method=|qint64|bytesToWrite|

$prototype=bool canReadLine() const Q_DECL_OVERRIDE
$method=|bool|canReadLine|

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
