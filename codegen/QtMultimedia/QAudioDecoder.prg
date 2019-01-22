%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioDecoder(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QAudioDecoder()
$deleteMethod

%%
%% Q_PROPERTY(QString sourceFilename READ sourceFilename WRITE setSourceFilename NOTIFY sourceChanged)
%%

$prototype=QString sourceFilename() const
$method=|QString|sourceFilename|

$prototype=void setSourceFilename(const QString & fileName)
$method=|void|setSourceFilename|const QString &

%%
%% Q_PROPERTY(State state READ state NOTIFY stateChanged)
%%

$prototype=State state() const
$method=|QAudioDecoder::State|state|

%%
%% Q_PROPERTY(QString error READ errorString)
%%

$prototype=QString errorString() const
$method=|QString|errorString|

%%
%% Q_PROPERTY(bool bufferAvailable READ bufferAvailable NOTIFY bufferAvailableChanged)
%%

$prototype=bool bufferAvailable() const
$method=|bool|bufferAvailable|

%%
%%
%%

$prototype=QAudioFormat audioFormat() const
$method=|QAudioFormat|audioFormat|

$prototype=void setAudioFormat(const QAudioFormat & format)
$method=|void|setAudioFormat|const QAudioFormat &

$prototype=qint64 duration() const
$method=|qint64|duration|

$prototype=Error error() const
$method=|QAudioDecoder::Error|error|

$prototype=qint64 position() const
$method=|qint64|position|

$prototype=QAudioBuffer read() const
$method=|QAudioBuffer|read|

$prototype=QIODevice * sourceDevice() const
$method=|QIODevice *|sourceDevice|

$prototype=void setSourceDevice(QIODevice * device)
$method=|void|setSourceDevice|QIODevice *

$prototype=void start()
$slotMethod=|void|start|

$prototype=void stop()
$slotMethod=|void|stop|

$prototype=static QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs = QStringList())
$staticMethod=|QMultimedia::SupportEstimate|hasSupport|const QString &,const QStringList &=QStringList()

$prototype=bool bind(QObject *) override

$prototype=void unbind(QObject *) override

%%
%% SIGNALS
%%

$prototype=void bufferAvailableChanged( bool available )
$signalMethod=|void|bufferAvailableChanged|bool

$prototype=void bufferReady()
$signalMethod=|void|bufferReady|

$prototype=void durationChanged( qint64 duration )
$signalMethod=|void|durationChanged|qint64

$prototype=void error( QAudioDecoder::Error error )
$signalMethod=|void|error,error,QOverload<QAudioDecoder::Error>|QAudioDecoder::Error

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void formatChanged( const QAudioFormat & format )
$signalMethod=|void|formatChanged|const QAudioFormat &

$prototype=void positionChanged( qint64 position )
$signalMethod=|void|positionChanged|qint64

$prototype=void sourceChanged()
$signalMethod=|void|sourceChanged|

$prototype=void stateChanged( QAudioDecoder::State state )
$signalMethod=|void|stateChanged|QAudioDecoder::State

#pragma ENDDUMP
