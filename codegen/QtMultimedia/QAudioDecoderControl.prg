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

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioDecoderControl(QObject *parent = nullptr) [protected]

$prototype=~QAudioDecoderControl()
$deleteMethod

$prototypeV2=virtual QAudioFormat audioFormat() const = 0

$prototypeV2=virtual bool bufferAvailable() const = 0

$prototypeV2=virtual qint64 duration() const = 0

$prototypeV2=virtual qint64 position() const = 0

$prototypeV2=virtual QAudioBuffer read() = 0

$prototype=virtual void setAudioFormat(const QAudioFormat & format) = 0
$virtualMethod=|void|setAudioFormat|const QAudioFormat &

$prototypeV2=virtual QIODevice * sourceDevice() const = 0

$prototype=virtual void setSourceDevice(QIODevice * device) = 0
$virtualMethod=|void|setSourceDevice|QIODevice *

$prototype=virtual void setSourceFilename(const QString & fileName) = 0
$virtualMethod=|void|setSourceFilename|const QString &

$prototypeV2=virtual QString sourceFilename() const = 0

$prototypeV2=virtual void start() = 0

$prototypeV2=virtual QAudioDecoder::State state() const = 0

$prototypeV2=virtual void stop() = 0

%%
%% SIGNALS
%%

$prototype=void bufferAvailableChanged( bool available )
$signalMethod=|void|bufferAvailableChanged|bool

$prototype=void bufferReady()
$signalMethod=|void|bufferReady|

$prototype=void durationChanged( qint64 duration )
$signalMethod=|void|durationChanged|qint64

$prototype=void error( int error, const QString & errorString )
$signalMethod=|void|error|int,const QString &

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
