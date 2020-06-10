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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=QSurface::SurfaceClass surfaceClass() const

$prototypeV2=virtual QSurfaceFormat format() const = 0

$prototype=virtual QPlatformSurface *surfaceHandle() const = 0
%% TODO: implementar ?
%% $virtualMethod=|QPlatformSurface *|surfaceHandle|

$prototypeV2=virtual QSurface::SurfaceType surfaceType() const = 0

$prototypeV2=virtual QSize size() const = 0

$extraMethods

#pragma ENDDUMP
