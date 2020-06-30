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

$prototype=explicit QCameraImageCapture(QMediaObject * mediaObject, QObject * parent = nullptr)
$constructor=|new|QMediaObject *,QObject *=nullptr

$prototype=~QCameraImageCapture()
$deleteMethod

%%
%% Q_PROPERTY(bool readyForCapture READ isReadyForCapture NOTIFY readyForCaptureChanged)
%%

$prototypeV2=bool isReadyForCapture() const

%%
%%
%%

$prototypeV2=QMultimedia::AvailabilityStatus availability() const

$prototypeV2=QVideoFrame::PixelFormat bufferFormat() const

$prototypeV2=QCameraImageCapture::CaptureDestinations captureDestination() const

$prototypeV2=QImageEncoderSettings encodingSettings() const

$prototypeV2=QCameraImageCapture::Error error() const

$prototypeV2=QString errorString() const

$prototypeV2=QString imageCodecDescription( const QString & codecName ) const

$prototypeV2=bool isAvailable() const

$prototypeV2=bool isCaptureDestinationSupported( QCameraImageCapture::CaptureDestinations destination ) const

$prototypeV2=QMediaObject * mediaObject() const override
%% TODO: is virtual ?

$prototypeV2=void setBufferFormat( const QVideoFrame::PixelFormat format )
%% TODO: const ?

$prototypeV2=void setCaptureDestination( QCameraImageCapture::CaptureDestinations destination )

$prototypeV2=void setEncodingSettings( const QImageEncoderSettings & settings )

$prototypeV2=QList<QVideoFrame::PixelFormat> supportedBufferFormats() const

$prototypeV2=QStringList supportedImageCodecs() const

$prototypeV2=QList<QSize> supportedResolutions( const QImageEncoderSettings & settings = QImageEncoderSettings(), bool * continuous = nullptr ) const

$prototypeV2=void cancelCapture()

$prototypeV2=int capture( const QString & location = QString() )

$prototype=bool setMediaObject(QMediaObject *) override [protected]

%%
%% SIGNALS
%%

$prototype=void bufferFormatChanged( QVideoFrame::PixelFormat format )
$signalMethod=|void|bufferFormatChanged|QVideoFrame::PixelFormat

$prototype=void captureDestinationChanged( QCameraImageCapture::CaptureDestinations destination )
$signalMethod=|void|captureDestinationChanged|QCameraImageCapture::CaptureDestinations

$prototype=void error( int id, QCameraImageCapture::Error error, const QString & errorString )
$signalMethod=|void|error,error,QOverload<int COMMA QCameraImageCapture::Error COMMA const QString &>|int,QCameraImageCapture::Error,const QString &

$prototype=void imageAvailable( int id, const QVideoFrame & buffer )
$signalMethod=|void|imageAvailable|int,const QVideoFrame &

$prototype=void imageCaptured( int id, const QImage & preview )
$signalMethod=|void|imageCaptured|int,const QImage &

$prototype=void imageExposed( int id )
$signalMethod=|void|imageExposed|int

$prototype=void imageMetadataAvailable( int id, const QString & key, const QVariant & value )
$signalMethod=|void|imageMetadataAvailable|int,const QString &,const QVariant &

$prototype=void imageSaved( int id, const QString & fileName )
$signalMethod=|void|imageSaved|int,const QString &

$prototype=void readyForCaptureChanged( bool ready )
$signalMethod=|void|readyForCaptureChanged|bool

#pragma ENDDUMP
