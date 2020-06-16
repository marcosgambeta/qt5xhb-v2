%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWinExtras
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWinEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWinColorizationChangeEvent(QRgb color, bool opaque)
$constructor=|new|QRgb,bool

$deleteMethod

$prototypeV2=QRgb color() const

$prototypeV2=bool opaqueBlend() const

#pragma ENDDUMP
