%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimediaWidgets

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

$deleteMethod

$prototypeV2=virtual QWidget * videoWidget() = 0

$prototypeV2=virtual Qt::AspectRatioMode aspectRatioMode() const = 0

$prototype=virtual void setAspectRatioMode(Qt::AspectRatioMode mode) = 0
$virtualMethod=|void|setAspectRatioMode|Qt::AspectRatioMode

$prototypeV2=virtual bool isFullScreen() const = 0

$prototype=virtual void setFullScreen(bool fullScreen) = 0
$virtualMethod=|void|setFullScreen|bool

$prototypeV2=virtual int brightness() const = 0

$prototype=virtual void setBrightness(int brightness) = 0
$virtualMethod=|void|setBrightness|int

$prototypeV2=virtual int contrast() const = 0

$prototype=virtual void setContrast(int contrast) = 0
$virtualMethod=|void|setContrast|int

$prototypeV2=virtual int hue() const = 0

$prototype=virtual void setHue(int hue) = 0
$virtualMethod=|void|setHue|int

$prototypeV2=virtual int saturation() const = 0

$prototype=virtual void setSaturation(int saturation) = 0
$virtualMethod=|void|setSaturation|int

%%
%% SIGNALS
%%

$prototype=void fullScreenChanged( bool fullScreen )
$signalMethod=|void|fullScreenChanged|bool

$prototype=void brightnessChanged( int brightness )
$signalMethod=|void|brightnessChanged|int

$prototype=void contrastChanged( int contrast )
$signalMethod=|void|contrastChanged|int

$prototype=void hueChanged( int hue )
$signalMethod=|void|hueChanged|int

$prototype=void saturationChanged( int saturation )
$signalMethod=|void|saturationChanged|int

#pragma ENDDUMP
