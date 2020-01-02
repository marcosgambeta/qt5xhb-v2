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

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraImageCaptureControl(QObject *parent = nullptr) [protected]

$prototype=~QCameraImageCaptureControl()
$deleteMethod

$prototype=virtual void cancelCapture() = 0
$virtualMethod=|void|cancelCapture|

$prototype=virtual int capture(const QString & fileName) = 0
$virtualMethod=|int|capture|const QString &

$prototype=virtual QCameraImageCapture::DriveMode driveMode() const = 0
$virtualMethod=|QCameraImageCapture::DriveMode|driveMode|

$prototype=virtual bool isReadyForCapture() const = 0
$virtualMethod=|bool|isReadyForCapture|

$prototype=virtual void setDriveMode(QCameraImageCapture::DriveMode mode) = 0
$virtualMethod=|void|setDriveMode|QCameraImageCapture::DriveMode

%%
%% SIGNALS
%%

$prototype=void error( int id, int error, const QString & errorString )
$signalMethod=|void|error|int,int,const QString &

$prototype=void imageAvailable( int requestId, const QVideoFrame & buffer )
$signalMethod=|void|imageAvailable|int,const QVideoFrame &

$prototype=void imageCaptured( int requestId, const QImage & preview )
$signalMethod=|void|imageCaptured|int,const QImage &

$prototype=void imageExposed( int requestId )
$signalMethod=|void|imageExposed|int

$prototype=void imageMetadataAvailable( int id, const QString & key, const QVariant & value )
$signalMethod=|void|imageMetadataAvailable|int,const QString &,const QVariant &

$prototype=void imageSaved( int requestId, const QString & fileName )
$signalMethod=|void|imageSaved|int,const QString &

$prototype=void readyForCaptureChanged( bool ready )
$signalMethod=|void|readyForCaptureChanged|bool

#pragma ENDDUMP
