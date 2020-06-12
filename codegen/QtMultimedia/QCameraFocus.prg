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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCameraFocus(QCamera *camera) [private]

$prototype=~QCameraFocus() [private]

%%
%% Q_PROPERTY(FocusModes focusMode READ focusMode WRITE setFocusMode)
%%

$prototypeV2=QCameraFocus::FocusModes focusMode() const

$prototype=void setFocusMode(FocusModes mode)
$method=|void|setFocusMode|QCameraFocus::FocusModes

%%
%% Q_PROPERTY(FocusPointMode focusPointMode READ focusPointMode WRITE setFocusPointMode)
%%

$prototypeV2=QCameraFocus::FocusPointMode focusPointMode() const

$prototype=void setFocusPointMode(FocusPointMode mode)
$method=|void|setFocusPointMode|QCameraFocus::FocusPointMode

%%
%% Q_PROPERTY(QPointF customFocusPoint READ customFocusPoint WRITE setCustomFocusPoint)
%%

$prototypeV2=QPointF customFocusPoint() const

$prototype=void setCustomFocusPoint(const QPointF & point)
$method=|void|setCustomFocusPoint|const QPointF &

%%
%% Q_PROPERTY(QCameraFocusZoneList focusZones READ focusZones NOTIFY focusZonesChanged)
%%

$prototypeV2=QCameraFocusZoneList focusZones() const

%%
%% Q_PROPERTY(qreal opticalZoom READ opticalZoom NOTIFY opticalZoomChanged)
%%

$prototypeV2=qreal opticalZoom() const

%%
%% Q_PROPERTY(qreal digitalZoom READ digitalZoom NOTIFY digitalZoomChanged)
%%

$prototypeV2=qreal digitalZoom() const

%%
%%
%%

$prototypeV2=bool isAvailable() const

$prototype=bool isFocusModeSupported(FocusModes mode) const
$method=|bool|isFocusModeSupported|QCameraFocus::FocusModes

$prototype=bool isFocusPointModeSupported(FocusPointMode mode) const
$method=|bool|isFocusPointModeSupported|QCameraFocus::FocusPointMode

$prototypeV2=qreal maximumDigitalZoom() const

$prototypeV2=qreal maximumOpticalZoom() const

$prototype=void zoomTo(qreal opticalZoom, qreal digitalZoom)
$method=|void|zoomTo|qreal,qreal

%%
%% SIGNALS
%%

$prototype=void digitalZoomChanged( qreal value )
$signalMethod=|void|digitalZoomChanged|qreal

$prototype=void focusZonesChanged()
$signalMethod=|void|focusZonesChanged|

$prototype=void maximumDigitalZoomChanged( qreal zoom )
$signalMethod=|void|maximumDigitalZoomChanged|qreal

$prototype=void maximumOpticalZoomChanged( qreal zoom )
$signalMethod=|void|maximumOpticalZoomChanged|qreal

$prototype=void opticalZoomChanged( qreal value )
$signalMethod=|void|opticalZoomChanged|qreal

#pragma ENDDUMP
