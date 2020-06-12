%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtQml/QQmlEngine>

$prototype=QQmlIncubationController()
$constructor=|new|

$deleteMethod

$prototypeV2=QQmlEngine * engine() const

$prototype=void incubateFor(int msecs)
$method=|void|incubateFor|int

$prototype=void incubateWhile(volatile bool * flag, int msecs = 0)
%% TODO: verificar 'volatile bool'
$method=|void|incubateWhile|bool *,int=0

$prototypeV2=int incubatingObjectCount() const

$extraMethods

#pragma ENDDUMP
