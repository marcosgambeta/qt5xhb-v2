%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

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

$prototype=explicit QProcess ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=void closeReadChannel( QProcess::ProcessChannel channel )

$prototypeV2=void closeWriteChannel()

$prototypeV2=QStringList environment() const

$prototypeV2=QProcess::ProcessError error() const

$prototypeV2=int exitCode() const

$prototypeV2=QProcess::ExitStatus exitStatus() const

$prototype=QString nativeArguments () const
$method=|QString|nativeArguments||#if defined(Q_OS_WIN)

$prototypeV2=QProcess::ProcessChannelMode processChannelMode() const

$prototypeV2=QProcessEnvironment processEnvironment() const

$prototypeV2=QByteArray readAllStandardError()

$prototypeV2=QByteArray readAllStandardOutput()

$prototype=QProcess::ProcessChannel readChannel() const

$prototypeV2=void setEnvironment( const QStringList & environment )

$prototype=void setNativeArguments ( const QString & arguments )
$method=|void|setNativeArguments|const QString &|#if defined(Q_OS_WIN)

$prototypeV2=void setProcessChannelMode( QProcess::ProcessChannelMode mode )

$prototypeV2=void setProcessEnvironment( const QProcessEnvironment & environment )

$prototypeV2=void setReadChannel( QProcess::ProcessChannel channel )

$prototypeV2=void setStandardErrorFile( const QString & fileName, QIODevice::OpenMode mode = QIODevice::Truncate )

$prototypeV2=void setStandardInputFile( const QString & fileName )

$prototypeV2=void setStandardOutputFile( const QString & fileName, QIODevice::OpenMode mode = QIODevice::Truncate )

$prototypeV2=void setStandardOutputProcess( QProcess * destination )

$prototypeV2=void setWorkingDirectory( const QString & dir )

$prototype=void start(const QString &program, const QStringList &arguments, OpenMode mode = ReadWrite)
$internalMethod=|void|start,start1|const QString &,const QStringList &,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void start(const QString &command, OpenMode mode = ReadWrite)
$internalMethod=|void|start,start2|const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void start(OpenMode mode = ReadWrite)
$internalMethod=5,1,0|void|start,start3|QIODevice::OpenMode=QIODevice::ReadWrite

/*
[1]void start(const QString &program, const QStringList &arguments, OpenMode mode = ReadWrite)
[2]void start(const QString &command, OpenMode mode = ReadWrite)
[3]void start(OpenMode mode = ReadWrite)
*/

HB_FUNC_STATIC( QPROCESS_START )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISARRAY(2) && ISOPTNUM(3) )
  {
    QProcess_start1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QProcess_start2();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QProcess_start3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=start

$prototypeV2=QProcess::ProcessState state() const

$prototypeV2=bool waitForFinished( int msecs = 30000 )

$prototypeV2=bool waitForStarted( int msecs = 30000 )

$prototypeV2=QString workingDirectory() const

$prototypeV2=bool atEnd() const

$prototypeV2=qint64 bytesAvailable() const

$prototypeV2=qint64 bytesToWrite() const

$prototypeV2=bool canReadLine() const

$prototypeV2=void close()

$prototypeV2=bool isSequential() const

$prototypeV2=virtual bool waitForBytesWritten( int msecs = 30000 )

$prototypeV2=virtual bool waitForReadyRead( int msecs = 30000 )

$prototypeV2=void kill()

$prototypeV2=void terminate()

$prototype=static int execute ( const QString & program, const QStringList & arguments )
$internalStaticMethod=|int|execute,execute1|const QString &,const QStringList &

$prototype=static int execute ( const QString & command )
$internalStaticMethod=|int|execute,execute2|const QString &

/*
[1]int execute ( const QString & program, const QStringList & arguments )
[2]int execute ( const QString & program )
*/

HB_FUNC_STATIC( QPROCESS_EXECUTE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QProcess_execute1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QProcess_execute2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=execute

$prototype=static bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = nullptr )
%% TODO: implementar 'qint64 *=nullptr'
%% $staticMethod=|bool|startDetached,startDetached1|const QString &,const QStringList &,const QString &,qint64 *=nullptr
$internalStaticMethod=|bool|startDetached,startDetached1|const QString &,const QStringList &,const QString &

$prototype=static bool startDetached ( const QString & program, const QStringList & arguments )
$internalStaticMethod=|bool|startDetached,startDetached2|const QString &,const QStringList &

$prototype=static bool startDetached ( const QString & program )
$internalStaticMethod=|bool|startDetached,startDetached3|const QString &

$prototype=bool QProcess::startDetached(qint64 *pid = nullptr) Require 5.10.0
%% TODO: implementar

/*
[1]bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = nullptr )
[2]bool startDetached ( const QString & program, const QStringList & arguments )
[3]bool startDetached ( const QString & program )
*/

HB_FUNC_STATIC( QPROCESS_STARTDETACHED )
{
  if( ISBETWEEN(3,4) && ISCHAR(1) && ISARRAY(2) && ISCHAR(3) && ISOPTNUM(4) )
  {
    QProcess_startDetached1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QProcess_startDetached2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QProcess_startDetached3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=startDetached

$prototypeV2=static QStringList systemEnvironment()

$prototypeV2=bool open( QIODevice::OpenMode mode = QIODevice::ReadWrite ) Q_DECL_OVERRIDE

$prototypeV2=QString program() const

$prototypeV2=5,1,0|void setProgram( const QString & program )

$prototypeV2=QStringList arguments() const

$prototypeV2=5,1,0|void setArguments( const QStringList & arguments )

$prototypeV2=QProcess::ProcessChannelMode readChannelMode() const

$prototypeV2=void setReadChannelMode( QProcess::ProcessChannelMode mode )

$prototypeV2=5,2,0|QProcess::InputChannelMode inputChannelMode() const

$prototypeV2=5,2,0|void setInputChannelMode( QProcess::InputChannelMode mode )

$prototypeV2=5,3,0|qint64 processId() const

$prototypeV2=5,2,0|static QString nullDevice()

$prototype=CreateProcessArgumentModifier QProcess::createProcessArgumentsModifier() const
%% TODO: implementar
%% $method=5,7,0|CreateProcessArgumentModifier|createProcessArgumentsModifier|

$prototype=void QProcess::setCreateProcessArgumentsModifier(CreateProcessArgumentModifier modifier) Require 5.7.0 Win C++11

%%
%% SIGNALS
%%

$prototype=void error( QProcess::ProcessError error )
$signalMethod=|void|error,error,QOverload<QProcess::ProcessError>|QProcess::ProcessError

$prototype=void finished( int exitCode, QProcess::ExitStatus exitStatus )
$signalMethod=|void|finished,finished,QOverload<int COMMA QProcess::ExitStatus>|int,QProcess::ExitStatus

$prototype=void readyReadStandardError()
$signalMethod=|void|readyReadStandardError|

$prototype=void readyReadStandardOutput()
$signalMethod=|void|readyReadStandardOutput|

$prototype=void started()
$signalMethod=|void|started|

$prototype=void stateChanged( QProcess::ProcessState newState )
$signalMethod=|void|stateChanged|QProcess::ProcessState

$prototype=void errorOccurred( QProcess::ProcessError error )
$signalMethod=5,6,0|void|errorOccurred|QProcess::ProcessError

#pragma ENDDUMP
