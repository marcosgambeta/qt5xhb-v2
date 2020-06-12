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

#include <QtScript/QScriptString>

$prototype=QScriptValueIterator(const QScriptValue & object)
$constructor=|new|const QScriptValue &

$deleteMethod

$prototypeV2=QScriptValue::PropertyFlags flags() const

$prototypeV2=bool hasNext() const

$prototypeV2=bool hasPrevious() const

$prototypeV2=QString name() const

$prototypeV2=void next()

$prototypeV2=void previous()

$prototypeV2=void remove()

$prototypeV2=QScriptString scriptName() const

$prototype=void setValue(const QScriptValue & value)
$method=|void|setValue|const QScriptValue &

$prototypeV2=void toBack()

$prototypeV2=void toFront()

$prototypeV2=QScriptValue value() const

$extraMethods

#pragma ENDDUMP
