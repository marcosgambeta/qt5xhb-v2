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

$prototype=explicit QCameraCaptureBufferFormatControl(QObject *parent = nullptr) [protected]

$prototype=~QCameraCaptureBufferFormatControl()
$deleteMethod

$prototypeV2=virtual QVideoFrame::PixelFormat bufferFormat() const = 0

$prototype=virtual void setBufferFormat(QVideoFrame::PixelFormat format) = 0
$virtualMethod=|void|setBufferFormat|QVideoFrame::PixelFormat

$prototype=virtual QList<QVideoFrame::PixelFormat> supportedBufferFormats() const = 0
$virtualMethod=|QList<QVideoFrame::PixelFormat>|supportedBufferFormats|

%%
%% SIGNALS
%%

$prototype=void bufferFormatChanged( QVideoFrame::PixelFormat format )
$signalMethod=|void|bufferFormatChanged|QVideoFrame::PixelFormat

#pragma ENDDUMP
