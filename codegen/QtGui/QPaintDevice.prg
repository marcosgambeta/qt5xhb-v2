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

$prototypeV2=int colorCount() const

$prototypeV2=int depth() const

$prototypeV2=int height() const

$prototypeV2=int heightMM() const

$prototypeV2=int logicalDpiX() const

$prototypeV2=int logicalDpiY() const

$prototypeV2=virtual QPaintEngine * paintEngine() const = 0

$prototypeV2=bool paintingActive() const

$prototypeV2=int physicalDpiX() const

$prototypeV2=int physicalDpiY() const

$prototypeV2=int width() const

$prototypeV2=int widthMM() const

$prototypeV2=virtual int devType() const

$prototypeV2=int devicePixelRatio() const

$extraMethods

#pragma ENDDUMP
