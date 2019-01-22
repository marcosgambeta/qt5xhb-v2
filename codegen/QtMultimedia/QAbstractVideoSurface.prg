%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVideoSurfaceFormat>

$prototype=explicit QAbstractVideoSurface(QObject *parent = nullptr)

$prototype=~QAbstractVideoSurface()
$deleteMethod

%%
%% Q_PROPERTY(QSize nativeResolution READ nativeResolution NOTIFY nativeResolutionChanged)
%%

$prototype=QSize nativeResolution() const
$method=|QSize|nativeResolution|

%%
%%
%%

$prototype=Error error () const
$method=|QAbstractVideoSurface::Error|error|

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=virtual bool isFormatSupported ( const QVideoSurfaceFormat & format ) const
$virtualMethod=|bool|isFormatSupported|const QVideoSurfaceFormat &

$prototype=virtual QVideoSurfaceFormat nearestFormat ( const QVideoSurfaceFormat & format ) const
$virtualMethod=|QVideoSurfaceFormat|nearestFormat|const QVideoSurfaceFormat &

$prototype=virtual bool present ( const QVideoFrame & frame ) = 0
$virtualMethod=|bool|present|const QVideoFrame &

$prototype=virtual bool start ( const QVideoSurfaceFormat & format )
$virtualMethod=|bool|start|const QVideoSurfaceFormat &

$prototype=virtual void stop ()
$virtualMethod=|void|stop|

$prototype=QVideoSurfaceFormat surfaceFormat () const
$method=|QVideoSurfaceFormat|surfaceFormat|

$prototype=virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats( QAbstractVideoBuffer::HandleType handleType = QAbstractVideoBuffer::NoHandle) const = 0
%% TODO: is pure virtual ?

$prototype=void setError(Error error) [protected]

$prototype=void setNativeResolution(const QSize &resolution) [protected]

%%
%% SIGNALS
%%

$prototype=void activeChanged(bool active)
$signalMethod=|void|activeChanged|bool

$prototype=void surfaceFormatChanged(const QVideoSurfaceFormat &format)
$signalMethod=|void|surfaceFormatChanged|const QVideoSurfaceFormat &

$prototype=void supportedFormatsChanged()
$signalMethod=|void|supportedFormatsChanged|

$prototype=void nativeResolutionChanged(const QSize &)
$signalMethod=|void|nativeResolutionChanged|const QSize &

#pragma ENDDUMP
