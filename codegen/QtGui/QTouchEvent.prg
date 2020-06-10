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

$beginClassFrom=QInputEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QList>
#include <QtGui/QWindow>

$deleteMethod

$prototypeV2=QWindow * window() const

$prototypeV2=QObject * target() const

$prototypeV2=Qt::TouchPointStates touchPointStates() const

$prototypeV2=QTouchDevice * device() const

#pragma ENDDUMP
