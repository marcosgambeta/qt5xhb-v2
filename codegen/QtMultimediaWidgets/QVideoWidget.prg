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

$beginClassFrom=QWidget,QMediaBindableInterface

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QVideoWidget(QWidget *parent = nullptr)
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=QMediaObject * mediaObject() const

$prototypeV2=bool isFullScreen() const

$prototypeV2=Qt::AspectRatioMode aspectRatioMode() const

$prototypeV2=int brightness() const

$prototypeV2=int contrast() const

$prototypeV2=int hue() const

$prototypeV2=int saturation() const

$prototypeV2=QSize sizeHint() const

$prototype=void setFullScreen(bool fullScreen)
$method=|void|setFullScreen|bool

$prototype=void setAspectRatioMode(Qt::AspectRatioMode mode)
$method=|void|setAspectRatioMode|Qt::AspectRatioMode

$prototype=void setBrightness(int brightness)
$method=|void|setBrightness|int

$prototype=void setContrast(int contrast)
$method=|void|setContrast|int

$prototype=void setHue(int hue)
$method=|void|setHue|int

$prototype=void setSaturation(int saturation)
$method=|void|setSaturation|int

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
