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

$beginClassFrom=QObject,QMediaBindableInterface

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$prototype=explicit QMediaRecorder(QMediaObject * mediaObject, QObject * parent = nullptr)
$constructor=|new|QMediaObject *,QObject *=nullptr

$prototype=QMediaRecorder(QMediaRecorderPrivate &dd, QMediaObject *mediaObject, QObject *parent = nullptr) [protected]

$prototype=~QMediaRecorder()
$deleteMethod

%%
%% Q_PROPERTY(QMediaRecorder::State state READ state NOTIFY stateChanged)
%%

$prototypeV2=QMediaRecorder::State state() const

%%
%% Q_PROPERTY(QMediaRecorder::Status status READ status NOTIFY statusChanged)
%%

$prototypeV2=QMediaRecorder::Status status() const

%%
%% Q_PROPERTY(qint64 duration READ duration NOTIFY durationChanged)
%%

$prototypeV2=qint64 duration() const

%%
%% Q_PROPERTY(QUrl outputLocation READ outputLocation WRITE setOutputLocation)
%%

$prototypeV2=QUrl outputLocation() const

$prototype=bool setOutputLocation(const QUrl & location)
$method=|bool|setOutputLocation|const QUrl &

%%
%% Q_PROPERTY(QUrl actualLocation READ actualLocation NOTIFY actualLocationChanged)
%%

$prototypeV2=QUrl actualLocation() const

%%
%% Q_PROPERTY(bool muted READ isMuted WRITE setMuted NOTIFY mutedChanged)
%%

$prototypeV2=bool isMuted() const

$prototype=void setMuted(bool muted)
$slotMethod=|void|setMuted|bool

%%
%% Q_PROPERTY(qreal volume READ volume WRITE setVolume NOTIFY volumeChanged)
%%

$prototypeV2=qreal volume() const

$prototype=void setVolume(qreal volume)
$slotMethod=|void|setVolume|qreal

%%
%% Q_PROPERTY(bool metaDataAvailable READ isMetaDataAvailable NOTIFY metaDataAvailableChanged)
%%

$prototypeV2=bool isMetaDataAvailable() const

%%
%% Q_PROPERTY(bool metaDataWritable READ isMetaDataWritable NOTIFY metaDataWritableChanged)
%%

$prototypeV2=bool isMetaDataWritable() const

%%
%%
%%

$prototype=QString audioCodecDescription(const QString & codecName) const
$method=|QString|audioCodecDescription|const QString &

$prototypeV2=QAudioEncoderSettings audioSettings() const

$prototypeV2=QMultimedia::AvailabilityStatus availability() const

$prototypeV2=QStringList availableMetaData() const

$prototype=QString containerDescription(const QString & format) const
$method=|QString|containerDescription|const QString &

$prototypeV2=QString containerFormat() const

$prototypeV2=QMediaPlaylist::Error error() const

$prototypeV2=QString errorString() const

$prototypeV2=bool isAvailable() const

$prototype=QVariant metaData(const QString & key) const
$method=|QVariant|metaData|const QString &

$prototype=void setAudioSettings(const QAudioEncoderSettings & audioSettings)
$method=|void|setAudioSettings|const QAudioEncoderSettings &

$prototype=void setContainerFormat(const QString & container)
$method=|void|setContainerFormat|const QString &

$prototype=void setEncodingSettings(const QAudioEncoderSettings & audioSettings, const QVideoEncoderSettings & videoSettings = QVideoEncoderSettings(), const QString & containerMimeType = QString())
$method=|void|setEncodingSettings|const QAudioEncoderSettings &,const QVideoEncoderSettings &=QVideoEncoderSettings(),const QString &=QString()

$prototype=void setMetaData(const QString & key, const QVariant & value)
$method=|void|setMetaData|const QString &,const QVariant &

$prototype=void setVideoSettings(const QVideoEncoderSettings & videoSettings)
$method=|void|setVideoSettings|const QVideoEncoderSettings &

$prototypeV2=QStringList supportedAudioCodecs() const

$prototype=QList<int> supportedAudioSampleRates(const QAudioEncoderSettings & settings = QAudioEncoderSettings(), bool * continuous = nullptr) const
$method=|QList<int>|supportedAudioSampleRates|const QAudioEncoderSettings &=QAudioEncoderSettings(),bool *=nullptr

$prototypeV2=QStringList supportedContainers() const

$prototype=QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = nullptr) const
$method=|QList<qreal>|supportedFrameRates|const QVideoEncoderSettings &=QVideoEncoderSettings(),bool *=nullptr

$prototype=QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = nullptr) const
$method=|QList<QSize>|supportedResolutions|const QVideoEncoderSettings &=QVideoEncoderSettings(),bool *=nullptr

$prototypeV2=QStringList supportedVideoCodecs() const

$prototype=QString videoCodecDescription(const QString & codecName) const
$method=|QString|videoCodecDescription|const QString &

$prototypeV2=QVideoEncoderSettings videoSettings() const

$prototype=virtual QMediaObject *mediaObject() const override
%% TODO: is virtual ?
$virtualMethod=|QMediaObject *|mediaObject|

$prototypeV2=void pause()

$prototypeV2=void record()

$prototypeV2=void stop()

$prototype=bool setMediaObject(QMediaObject *object) override [protected]

%%
%% SIGNALS
%%

$prototype=void actualLocationChanged( const QUrl & location )
$signalMethod=|void|actualLocationChanged|const QUrl &

$prototype=void availabilityChanged( bool available )
$signalMethod=|void|availabilityChanged,availabilityChanged1,QOverload<bool>|bool

$prototype=void availabilityChanged( QMultimedia::AvailabilityStatus availability )
$signalMethod=|void|availabilityChanged,availabilityChanged2,QOverload<QMultimedia::AvailabilityStatus>|QMultimedia::AvailabilityStatus

$prototype=void durationChanged( qint64 duration )
$signalMethod=|void|durationChanged|qint64

$prototype=void error( QMediaRecorder::Error error )
$signalMethod=|void|error,error,QOverload<QMediaRecorder::Error>|QMediaRecorder::Error

$prototype=void metaDataAvailableChanged( bool available )
$signalMethod=|void|metaDataAvailableChanged|bool

$prototype=void metaDataChanged()
$signalMethod=|void|metaDataChanged,metaDataChanged1,QOverload<>|

$prototype=void metaDataChanged( const QString & key, const QVariant & value )
$signalMethod=|void|metaDataChanged,metaDataChanged2,QOverload<const QString & COMMA const QVariant &>|const QString &,const QVariant &

$prototype=void metaDataWritableChanged( bool writable )
$signalMethod=|void|metaDataWritableChanged|bool

$prototype=void mutedChanged( bool muted )
$signalMethod=|void|mutedChanged|bool

$prototype=void stateChanged( QMediaRecorder::State state )
$signalMethod=|void|stateChanged|QMediaRecorder::State

$prototype=void statusChanged( QMediaRecorder::Status status )
$signalMethod=|void|statusChanged|QMediaRecorder::Status

$prototype=void volumeChanged( qreal volume )
$signalMethod=|void|volumeChanged|qreal

#pragma ENDDUMP
