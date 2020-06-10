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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=int mouseDoubleClickInterval() const

$prototypeV2=int startDragDistance() const

$prototypeV2=int startDragTime() const

$prototypeV2=int startDragVelocity() const

$prototypeV2=int keyboardInputInterval() const

$prototypeV2=int keyboardAutoRepeatRate() const

$prototypeV2=int cursorFlashTime() const

$prototypeV2=bool showIsFullScreen() const

$prototypeV2=int passwordMaskDelay() const

$prototypeV2=qreal fontSmoothingGamma() const

$prototypeV2=bool useRtlExtensions() const

#pragma ENDDUMP
