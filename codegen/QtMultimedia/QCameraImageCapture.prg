%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=bool isReadyForCapture() const
$method=|bool|isReadyForCapture|

%%
%%
%%

$prototype=QMultimedia::AvailabilityStatus availability() const
$method=|QtMultimedia::AvailabilityStatus|availability|

$prototype=QVideoFrame::PixelFormat bufferFormat() const
$method=|QVideoFrame::PixelFormat|bufferFormat|

$prototype=CaptureDestinations captureDestination() const
$method=|QCameraImageCapture::CaptureDestinations|captureDestination|

$prototype=QImageEncoderSettings encodingSettings() const
$method=|QImageEncoderSettings|encodingSettings|

$prototype=Error error() const
$method=|QCameraImageCapture::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=QString imageCodecDescription(const QString & codecName) const
$method=|QString|imageCodecDescription|const QString &

$prototype=bool isAvailable() const
$method=|bool|isAvailable|

$prototype=bool isCaptureDestinationSupported(CaptureDestinations destination) const
$method=|bool|isCaptureDestinationSupported|QCameraImageCapture::CaptureDestinations

$prototype=QMediaObject *mediaObject() const override
%% TODO: is virtual ?
$virtualMethod=|QMediaObject *|mediaObject|

$prototype=void setBufferFormat(const QVideoFrame::PixelFormat format)
%% TODO: const ?
$method=|void|setBufferFormat|QVideoFrame::PixelFormat

$prototype=void setCaptureDestination(CaptureDestinations destination)
$method=|void|setCaptureDestination|QCameraImageCapture::CaptureDestinations

$prototype=void setEncodingSettings(const QImageEncoderSettings & settings)
$method=|void|setEncodingSettings|const QImageEncoderSettings &

$prototype=QList<QVideoFrame::PixelFormat> supportedBufferFormats() const
$method=|QList<QVideoFrame::PixelFormat>|supportedBufferFormats|

$prototype=QStringList supportedImageCodecs() const
$method=|QStringList|supportedImageCodecs|

$prototype=QList<QSize> supportedResolutions(const QImageEncoderSettings & settings = QImageEncoderSettings(), bool * continuous = nullptr) const
$method=|QList<QSize>|supportedResolutions|const QImageEncoderSettings &=QImageEncoderSettings(),bool *=nullptr

$prototype=void cancelCapture()
$slotMethod=|void|cancelCapture|

$prototype=int capture(const QString & location = QString())
$slotMethod=|int|capture|const QString &=QString()

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
