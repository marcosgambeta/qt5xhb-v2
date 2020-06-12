%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototypeV2=QString sourceFilename() const

$prototype=void setSourceFilename(const QString & fileName)
$method=|void|setSourceFilename|const QString &

%%
%% Q_PROPERTY(State state READ state NOTIFY stateChanged)
%%

$prototypeV2=QAudioDecoder::State state() const

%%
%% Q_PROPERTY(QString error READ errorString)
%%

$prototypeV2=QString errorString() const

%%
%% Q_PROPERTY(bool bufferAvailable READ bufferAvailable NOTIFY bufferAvailableChanged)
%%

$prototypeV2=bool bufferAvailable() const

%%
%%
%%

$prototypeV2=QAudioFormat audioFormat() const

$prototype=void setAudioFormat(const QAudioFormat & format)
$method=|void|setAudioFormat|const QAudioFormat &

$prototypeV2=qint64 duration() const

$prototypeV2=QAudioDecoder::Error error() const

$prototypeV2=qint64 position() const

$prototypeV2=QAudioBuffer read() const

$prototypeV2=QIODevice * sourceDevice() const

$prototype=void setSourceDevice(QIODevice * device)
$method=|void|setSourceDevice|QIODevice *

$prototypeV2=void start()

$prototypeV2=void stop()

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
