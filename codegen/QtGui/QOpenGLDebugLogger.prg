%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

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

$prototype=QOpenGLDebugLogger(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=bool initialize()

$prototypeV2=bool isLogging() const

$prototypeV2=QOpenGLDebugLogger::LoggingMode loggingMode() const

$prototypeV2=qint64 maximumMessageLength() const

$prototypeV2=void pushGroup( const QString & name, GLuint id = 0, QOpenGLDebugMessage::Source source = QOpenGLDebugMessage::ApplicationSource )

$prototypeV2=void popGroup()

$prototypeV2=void logMessage( const QOpenGLDebugMessage & debugMessage )

$prototypeV2=void startLogging( QOpenGLDebugLogger::LoggingMode loggingMode = QOpenGLDebugLogger::AsynchronousLogging )

$prototypeV2=void stopLogging()

%%
%% SIGNALS
%%

$prototype=void messageLogged( const QOpenGLDebugMessage & debugMessage )
$signalMethod=|void|messageLogged|const QOpenGLDebugMessage &

#pragma ENDDUMP
