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

$prototype=explicit QCameraZoomControl(QObject *parent = nullptr) [protected]

$prototype=~QCameraZoomControl()
$deleteMethod

$prototype=virtual qreal currentDigitalZoom() const = 0
$virtualMethod=|qreal|currentDigitalZoom|

$prototype=virtual qreal currentOpticalZoom() const = 0
$virtualMethod=|qreal|currentOpticalZoom|

$prototype=virtual qreal maximumDigitalZoom() const = 0
$virtualMethod=|qreal|maximumDigitalZoom|

$prototype=virtual qreal maximumOpticalZoom() const = 0
$virtualMethod=|qreal|maximumOpticalZoom|

$prototype=virtual qreal requestedDigitalZoom() const = 0
$virtualMethod=|qreal|requestedDigitalZoom|

$prototype=virtual qreal requestedOpticalZoom() const = 0
$virtualMethod=|qreal|requestedOpticalZoom|

$prototype=virtual void zoomTo(qreal optical, qreal digital) = 0
$virtualMethod=|void|zoomTo|qreal,qreal

%%
%% SIGNALS
%%

$prototype=void currentDigitalZoomChanged( qreal zoom )
$signalMethod=|void|currentDigitalZoomChanged|qreal

$prototype=void currentOpticalZoomChanged( qreal zoom )
$signalMethod=|void|currentOpticalZoomChanged|qreal

$prototype=void maximumDigitalZoomChanged( qreal zoom )
$signalMethod=|void|maximumDigitalZoomChanged|qreal

$prototype=void maximumOpticalZoomChanged( qreal zoom )
$signalMethod=|void|maximumOpticalZoomChanged|qreal

$prototype=void requestedDigitalZoomChanged( qreal zoom )
$signalMethod=|void|requestedDigitalZoomChanged|qreal

$prototype=void requestedOpticalZoomChanged( qreal zoom )
$signalMethod=|void|requestedOpticalZoomChanged|qreal

#pragma ENDDUMP
