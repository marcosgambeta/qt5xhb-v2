%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QGraphicsItem

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
$method=|void|grabGesture|Qt::GestureType,Qt::GestureFlags=Qt::GestureFlags()

$prototype=void ungrabGesture ( Qt::GestureType gesture )
$method=|void|ungrabGesture|Qt::GestureType

%%
%% SIGNALS
%%

$prototype=void enabledChanged()
$signalMethod=|void|enabledChanged|

$prototype=void opacityChanged()
$signalMethod=|void|opacityChanged|

$prototype=void parentChanged()
$signalMethod=|void|parentChanged|

$prototype=void rotationChanged()
$signalMethod=|void|rotationChanged|

$prototype=void scaleChanged()
$signalMethod=|void|scaleChanged|

$prototype=void visibleChanged()
$signalMethod=|void|visibleChanged|

$prototype=void xChanged()
$signalMethod=|void|xChanged|

$prototype=void yChanged()
$signalMethod=|void|yChanged|

$prototype=void zChanged()
$signalMethod=|void|zChanged|

#pragma ENDDUMP
