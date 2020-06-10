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

$prototype=void pushGroup(const QString &name,GLuint id = 0,QOpenGLDebugMessage::Source source = QOpenGLDebugMessage::ApplicationSource)
$method=|void|pushGroup|const QString &,GLuint=0,QOpenGLDebugMessage::Source=QOpenGLDebugMessage::ApplicationSource

$prototypeV2=void popGroup()

$prototype=void logMessage(const QOpenGLDebugMessage &debugMessage)
$method=|void|logMessage|const QOpenGLDebugMessage &

$prototype=void startLogging(LoggingMode loggingMode = AsynchronousLogging)
$method=|void|startLogging|QOpenGLDebugLogger::LoggingMode=QOpenGLDebugLogger::AsynchronousLogging

$prototypeV2=void stopLogging()

%%
%% SIGNALS
%%

$prototype=void messageLogged( const QOpenGLDebugMessage & debugMessage )
$signalMethod=|void|messageLogged|const QOpenGLDebugMessage &

#pragma ENDDUMP
