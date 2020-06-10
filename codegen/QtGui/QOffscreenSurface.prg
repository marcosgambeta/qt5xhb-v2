%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QSurface

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QScreen>

$prototype=QOffscreenSurface(QScreen *screen = nullptr)
$constructor=|new|QScreen *=nullptr

$deleteMethod

$prototypeV2=QSurface::SurfaceType surfaceType() const

$prototypeV2=void create()

$prototypeV2=void destroy()

$prototypeV2=bool isValid() const

$prototype=void setFormat(const QSurfaceFormat &format)
$method=|void|setFormat|const QSurfaceFormat &

$prototypeV2=QSurfaceFormat format() const

$prototypeV2=QSurfaceFormat requestedFormat() const

$prototypeV2=QSize size() const

$prototypeV2=QScreen * screen() const

$prototype=void setScreen(QScreen *screen)
$method=|void|setScreen|QScreen *

$prototype=QPlatformOffscreenSurface *handle() const
%% TODO: QPlatformOffscreenSurface class
%% $method=|QPlatformOffscreenSurface *|handle|

%%
%% SIGNALS
%%

$prototype=void screenChanged( QScreen * screen )
$signalMethod=|void|screenChanged|QScreen *

#pragma ENDDUMP
