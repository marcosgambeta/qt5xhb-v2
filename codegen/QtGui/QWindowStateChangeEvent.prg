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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride = false)
$constructor=|new|Qt::WindowStates,bool=false

$deleteMethod

$prototypeV2=Qt::WindowStates oldState() const

$prototypeV2=bool isOverride() const

#pragma ENDDUMP
