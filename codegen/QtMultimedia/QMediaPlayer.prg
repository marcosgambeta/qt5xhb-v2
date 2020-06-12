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

#include <QtMultimedia/QMediaPlaylist>

$prototype=explicit QMediaPlayer(QObject *parent = nullptr, Flags flags = Flags())
%% TODO: 'Flags flags = Flags()'
$constructor=|new|QObject *=nullptr,QMediaPlayer::Flags=0

$prototype=~QMediaPlayer()
$deleteMethod

%%
%% Q_PROPERTY(QMediaContent media READ media WRITE setMedia NOTIFY mediaChanged)
%%

$prototypeV2=QMediaContent media() const

$prototype=void setMedia(const QMediaContent &media, QIODevice *stream = nullptr)
$slotMethod=|void|setMedia|const QMediaContent &,QIODevice *=nullptr

%%
%% Q_PROPERTY(QMediaContent currentMedia READ currentMedia NOTIFY currentMediaChanged)
%%

$prototypeV2=QMediaContent currentMedia() const

%%
%% Q_PROPERTY(QMediaPlaylist * playlist READ playlist WRITE setPlaylist)
%%

$prototypeV2=QMediaPlaylist * playlist() const

$prototype=void setPlaylist(QMediaPlaylist * playlist)
$slotMethod=|void|setPlaylist|QMediaPlaylist *

%%
%% Q_PROPERTY(qint64 duration READ duration NOTIFY durationChanged)
%%

$prototypeV2=qint64 duration() const

%%
%% Q_PROPERTY(qint64 position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototypeV2=qint64 position() const

$prototype=void setPosition(qint64 position)
$slotMethod=|void|setPosition|qint64

%%
%% Q_PROPERTY(int volume READ volume WRITE setVolume NOTIFY volumeChanged)
%%

$prototypeV2=int volume() const

$prototype=void setVolume(int volume)
$slotMethod=|void|setVolume|int

%%
%% Q_PROPERTY(bool muted READ isMuted WRITE setMuted NOTIFY mutedChanged)
%%

$prototypeV2=bool isMuted() const

$prototype=void setMuted(bool muted)
$slotMethod=|void|setMuted|bool

%%
%% Q_PROPERTY(int bufferStatus READ bufferStatus NOTIFY bufferStatusChanged)
%%

$prototypeV2=int bufferStatus() const

%%
%% Q_PROPERTY(bool audioAvailable READ isAudioAvailable NOTIFY audioAvailableChanged)
%%

$prototypeV2=bool isAudioAvailable() const

%%
%% Q_PROPERTY(bool videoAvailable READ isVideoAvailable NOTIFY videoAvailableChanged)
%%

$prototypeV2=bool isVideoAvailable() const

%%
%% Q_PROPERTY(bool seekable READ isSeekable NOTIFY seekableChanged)
%%

$prototypeV2=bool isSeekable() const

%%
%% Q_PROPERTY(qreal playbackRate READ playbackRate WRITE setPlaybackRate NOTIFY playbackRateChanged)
%%

$prototypeV2=qreal playbackRate() const

%%
%% Q_PROPERTY(State state READ state NOTIFY stateChanged)
%%

$prototypeV2=QMediaPlayer::State state() const

%%
%% Q_PROPERTY(MediaStatus mediaStatus READ mediaStatus NOTIFY mediaStatusChanged)
%%

$prototypeV2=QMediaPlayer::MediaStatus mediaStatus() const

%%
%% Q_PROPERTY(QAudio::Role audioRole READ audioRole WRITE setAudioRole)
%%

$prototype=QAudio::Role audioRole() const
$method=5,6,0|QAudio::Role|audioRole|

$prototype=void setAudioRole(QAudio::Role audioRole)
$method=5,6,0|void|setAudioRole|QAudio::Role

%%
%% Q_PROPERTY(QString error READ errorString)
%%

$prototypeV2=QString errorString() const

%%
%%
%%

$prototypeV2=QNetworkConfiguration currentNetworkConfiguration() const

$prototypeV2=QMediaPlayer::Error error() const

$prototype=const QIODevice * mediaStream() const
$method=|const QIODevice *|mediaStream|

$prototype=void setVideoOutput(QVideoWidget * output)
$internalMethod=|void|setVideoOutput,setVideoOutput1|QVideoWidget *

$prototype=void setVideoOutput(QGraphicsVideoItem * output)
$internalMethod=|void|setVideoOutput,setVideoOutput2|QGraphicsVideoItem *

$prototype=void setVideoOutput(QAbstractVideoSurface * surface)
$internalMethod=|void|setVideoOutput,setVideoOutput3|QAbstractVideoSurface *

/*
[1]void setVideoOutput(QVideoWidget * output)
[2]void setVideoOutput(QGraphicsVideoItem * output)
[3]void setVideoOutput(QAbstractVideoSurface * surface)
*/

HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT )
{
  if( ISNUMPAR(1) && ISQVIDEOWIDGET(1) )
  {
    QMediaPlayer_setVideoOutput1();
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSVIDEOITEM(1) )
  {
    QMediaPlayer_setVideoOutput2();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
  {
    QMediaPlayer_setVideoOutput3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setVideoOutput

$prototypeV2=virtual QMultimedia::AvailabilityStatus availability() const override

$prototypeV2=void pause()

$prototypeV2=void play()

$prototype=void setNetworkConfigurations(const QList<QNetworkConfiguration> & configurations)
$slotMethod=|void|setNetworkConfigurations|const QList<QNetworkConfiguration> &

$prototype=void setPlaybackRate(qreal rate)
$slotMethod=|void|setPlaybackRate|qreal

$prototypeV2=void stop()

$prototype=static QMultimedia::SupportEstimate hasSupport(const QString &mimeType, const QStringList& codecs = QStringList(), Flags flags = Flags())
$staticMethod=|QMultimedia::SupportEstimate|hasSupport|const QString &,const QStringList &=QStringList(),QMediaPlayer::Flags=0

$prototype=static QStringList supportedMimeTypes(Flags flags = Flags())
$staticMethod=|QStringList|supportedMimeTypes|QMediaPlayer::Flags=0

$prototype=QList<QAudio::Role> supportedAudioRoles() const
$method=5,6,0|QList<QAudio::Role>|supportedAudioRoles|

$prototype=bool bind(QObject *) override
%% TODO: not present in the documentation

$prototype=void unbind(QObject *) override
%% TODO: not present in the documentation

%%
%% SIGNALS
%%

$prototype=void audioAvailableChanged( bool available )
$signalMethod=|void|audioAvailableChanged|bool

$prototype=void audioRoleChanged( QAudio::Role role )
$signalMethod=5,6,0|void|audioRoleChanged|QAudio::Role

$prototype=void bufferStatusChanged( int percentFilled )
$signalMethod=|void|bufferStatusChanged|int

$prototype=void currentMediaChanged( const QMediaContent & media )
$signalMethod=|void|currentMediaChanged|const QMediaContent &

$prototype=void durationChanged( qint64 duration )
$signalMethod=|void|durationChanged|qint64

$prototype=void error( QMediaPlayer::Error error )
$signalMethod=|void|error,error,QOverload<QMediaPlayer::Error>|QMediaPlayer::Error

$prototype=void mediaChanged( const QMediaContent & media )
$signalMethod=|void|mediaChanged|const QMediaContent &

$prototype=void mediaStatusChanged( QMediaPlayer::MediaStatus status )
$signalMethod=|void|mediaStatusChanged|QMediaPlayer::MediaStatus

$prototype=void mutedChanged( bool muted )
$signalMethod=|void|mutedChanged|bool

$prototype=void networkConfigurationChanged( const QNetworkConfiguration & configuration )
$signalMethod=|void|networkConfigurationChanged|const QNetworkConfiguration &

$prototype=void playbackRateChanged( qreal rate )
$signalMethod=|void|playbackRateChanged|qreal

$prototype=void positionChanged( qint64 position )
$signalMethod=|void|positionChanged|qint64

$prototype=void seekableChanged( bool seekable )
$signalMethod=|void|seekableChanged|bool

$prototype=void stateChanged( QMediaPlayer::State state )
$signalMethod=|void|stateChanged|QMediaPlayer::State

$prototype=void videoAvailableChanged( bool videoAvailable )
$signalMethod=|void|videoAvailableChanged|bool

$prototype=void volumeChanged( int volume )
$signalMethod=|void|volumeChanged|int

#pragma ENDDUMP
