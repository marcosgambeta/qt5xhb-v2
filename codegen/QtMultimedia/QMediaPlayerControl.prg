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

$prototype=explicit QMediaPlayerControl(QObject *parent = nullptr) [protected]

$prototype=~QMediaPlayerControl()
$deleteMethod

$prototypeV2=virtual QMediaTimeRange availablePlaybackRanges() const = 0

$prototypeV2=virtual int bufferStatus() const = 0

$prototypeV2=virtual qint64 duration() const = 0

$prototypeV2=virtual bool isAudioAvailable() const = 0

$prototypeV2=virtual bool isMuted() const = 0

$prototypeV2=virtual bool isSeekable() const = 0

$prototypeV2=virtual bool isVideoAvailable() const = 0

$prototypeV2=virtual QMediaContent media() const = 0

$prototypeV2=virtual QMediaPlayer::MediaStatus mediaStatus() const = 0

$prototype=virtual const QIODevice * mediaStream() const = 0
$virtualMethod=|const QIODevice *|mediaStream|

$prototypeV2=virtual void pause() = 0

$prototypeV2=virtual void play() = 0

$prototypeV2=virtual qreal playbackRate() const = 0

$prototypeV2=virtual qint64 position() const = 0

$prototype=virtual void setMedia(const QMediaContent & media, QIODevice * stream) = 0
$virtualMethod=|void|setMedia|const QMediaContent &,QIODevice *

$prototype=virtual void setMuted(bool mute) = 0
$virtualMethod=|void|setMuted|bool

$prototype=virtual void setPlaybackRate(qreal rate) = 0
$virtualMethod=|void|setPlaybackRate|qreal

$prototype=virtual void setPosition(qint64 position) = 0
$virtualMethod=|void|setPosition|qint64

$prototype=virtual void setVolume(int volume) = 0
$virtualMethod=|void|setVolume|int

$prototypeV2=virtual QMediaPlayer::State state() const = 0

$prototypeV2=virtual void stop() = 0

$prototypeV2=virtual int volume() const = 0

%%
%% SIGNALS
%%

$prototype=void audioAvailableChanged( bool audio )
$signalMethod=|void|audioAvailableChanged|bool

$prototype=void availablePlaybackRangesChanged( const QMediaTimeRange & ranges )
$signalMethod=|void|availablePlaybackRangesChanged|const QMediaTimeRange &

$prototype=void bufferStatusChanged( int progress )
$signalMethod=|void|bufferStatusChanged|int

$prototype=void durationChanged( qint64 duration )
$signalMethod=|void|durationChanged|qint64

$prototype=void error( int error, const QString & errorString )
$signalMethod=|void|error|int,const QString &

$prototype=void mediaChanged( const QMediaContent & content )
$signalMethod=|void|mediaChanged|const QMediaContent &

$prototype=void mediaStatusChanged( QMediaPlayer::MediaStatus status )
$signalMethod=|void|mediaStatusChanged|QMediaPlayer::MediaStatus

$prototype=void mutedChanged( bool mute )
$signalMethod=|void|mutedChanged|bool

$prototype=void playbackRateChanged( qreal rate )
$signalMethod=|void|playbackRateChanged|qreal

$prototype=void positionChanged( qint64 position )
$signalMethod=|void|positionChanged|qint64

$prototype=void seekableChanged( bool seekable )
$signalMethod=|void|seekableChanged|bool

$prototype=void stateChanged( QMediaPlayer::State state )
$signalMethod=|void|stateChanged|QMediaPlayer::State

$prototype=void videoAvailableChanged( bool video )
$signalMethod=|void|videoAvailableChanged|bool

$prototype=void volumeChanged( int volume )
$signalMethod=|void|volumeChanged|int

#pragma ENDDUMP
