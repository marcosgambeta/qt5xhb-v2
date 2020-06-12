%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtScript/QScriptEngine>
#include <QtScript/QScriptValue>

$deleteMethod

$prototype=QScriptValue argument(int index) const
$method=|QScriptValue|argument|int

$prototypeV2=int argumentCount() const

$prototypeV2=QScriptContext * context() const

$prototypeV2=QScriptEngine * engine() const

$prototypeV2=QScriptValue thisObject() const

$extraMethods

#pragma ENDDUMP
