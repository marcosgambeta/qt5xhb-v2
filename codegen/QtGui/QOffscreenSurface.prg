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

$prototypeV2=void setFormat( const QSurfaceFormat & format )

$prototypeV2=QSurfaceFormat format() const

$prototypeV2=QSurfaceFormat requestedFormat() const

$prototypeV2=QSize size() const

$prototypeV2=QScreen * screen() const

$prototypeV2=void setScreen( QScreen * screen )

$prototype=QPlatformOffscreenSurface *handle() const
%% TODO: QPlatformOffscreenSurface class
%% $method=|QPlatformOffscreenSurface *|handle|

%%
%% SIGNALS
%%

$prototype=void screenChanged( QScreen * screen )
$signalMethod=|void|screenChanged|QScreen *

#pragma ENDDUMP
