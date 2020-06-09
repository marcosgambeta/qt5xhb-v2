%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QChildEvent(Type type, QObject * child)
$constructor=|new|QEvent::Type,QObject *

$deleteMethod

$prototypeV2=bool added() const

$prototypeV2=QObject * child() const

$prototypeV2=bool polished() const

$prototypeV2=bool removed() const

#pragma ENDDUMP
