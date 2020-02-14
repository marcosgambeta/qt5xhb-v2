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

$prototype=State state() const
$method=|QMediaRecorder::State|state|

%%
%% Q_PROPERTY(QMediaRecorder::Status status READ status NOTIFY statusChanged)
%%

$prototype=Status status() const
$method=|QMediaRecorder::Status|status|

%%
%% Q_PROPERTY(qint64 duration READ duration NOTIFY durationChanged)
%%

$prototype=qint64 duration() const
$method=|qint64|duration|

%%
%% Q_PROPERTY(QUrl outputLocation READ outputLocation WRITE setOutputLocation)
%%

$prototype=QUrl outputLocation() const
$method=|QUrl|outputLocation|

$prototype=bool setOutputLocation(const QUrl & location)
$method=|bool|setOutputLocation|const QUrl &

%%
%% Q_PROPERTY(QUrl actualLocation READ actualLocation NOTIFY actualLocationChanged)
%%

$prototype=QUrl actualLocation() const
$method=|QUrl|actualLocation|

%%
%% Q_PROPERTY(bool muted READ isMuted WRITE setMuted NOTIFY mutedChanged)
%%

$prototype=bool isMuted() const
$method=|bool|isMuted|

$prototype=void setMuted(bool muted)
$slotMethod=|void|setMuted|bool

%%
%% Q_PROPERTY(qreal volume READ volume WRITE setVolume NOTIFY volumeChanged)
%%

$prototype=qreal volume() const
$method=|qreal|volume|

$prototype=void setVolume(qreal volume)
$slotMethod=|void|setVolume|qreal

%%
%% Q_PROPERTY(bool metaDataAvailable READ isMetaDataAvailable NOTIFY metaDataAvailableChanged)
%%

$prototype=bool isMetaDataAvailable() const
$method=|bool|isMetaDataAvailable|

%%
%% Q_PROPERTY(bool metaDataWritable READ isMetaDataWritable NOTIFY metaDataWritableChanged)
%%

$prototype=bool isMetaDataWritable() const
$method=|bool|isMetaDataWritable|

%%
%%
%%

$prototype=QString audioCodecDescription(const QString & codecName) const
$method=|QString|audioCodecDescription|const QString &

$prototype=QAudioEncoderSettings audioSettings() const
$method=|QAudioEncoderSettings|audioSettings|

$prototype=QMultimedia::AvailabilityStatus availability() const
$method=|QMultimedia::AvailabilityStatus|availability|

$prototype=QStringList availableMetaData() const
$method=|QStringList|availableMetaData|

$prototype=QString containerDescription(const QString & format) const
$method=|QString|containerDescription|const QString &

$prototype=QString containerFormat() const
$method=|QString|containerFormat|

$prototype=Error error() const
$method=|QMediaPlaylist::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=bool isAvailable() const
$method=|bool|isAvailable|

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

$prototype=QStringList supportedAudioCodecs() const
$method=|QStringList|supportedAudioCodecs|

$prototype=QList<int> supportedAudioSampleRates(const QAudioEncoderSettings & settings = QAudioEncoderSettings(), bool * continuous = nullptr) const
$method=|QList<int>|supportedAudioSampleRates|const QAudioEncoderSettings &=QAudioEncoderSettings(),bool *=nullptr

$prototype=QStringList supportedContainers() const
$method=|QStringList|supportedContainers|

$prototype=QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = nullptr) const
$method=|QList<qreal>|supportedFrameRates|const QVideoEncoderSettings &=QVideoEncoderSettings(),bool *=nullptr

$prototype=QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = nullptr) const
$method=|QList<QSize>|supportedResolutions|const QVideoEncoderSettings &=QVideoEncoderSettings(),bool *=nullptr

$prototype=QStringList supportedVideoCodecs() const
$method=|QStringList|supportedVideoCodecs|

$prototype=QString videoCodecDescription(const QString & codecName) const
$method=|QString|videoCodecDescription|const QString &

$prototype=QVideoEncoderSettings videoSettings() const
$method=|QVideoEncoderSettings|videoSettings|

$prototype=virtual QMediaObject *mediaObject() const override
%% TODO: is virtual ?
$virtualMethod=|QMediaObject *|mediaObject|

$prototype=void pause()
$slotMethod=|void|pause|

$prototype=void record()
$slotMethod=|void|record|

$prototype=void stop()
$slotMethod=|void|stop|

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
