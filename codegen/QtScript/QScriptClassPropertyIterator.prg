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

$deleteMethod

$prototype=virtual QScriptValue::PropertyFlags flags() const
$virtualMethod=|QScriptValue::PropertyFlags|flags|

$prototypeV2=virtual bool hasNext() const = 0

$prototypeV2=virtual bool hasPrevious() const = 0

$prototypeV2=virtual uint id() const

$prototypeV2=virtual QScriptString name() const = 0

$prototypeV2=virtual void next() = 0

$prototypeV2=QScriptValue object() const

$prototypeV2=virtual void previous() = 0

$prototypeV2=virtual void toBack() = 0

$prototypeV2=virtual void toFront() = 0

$extraMethods

#pragma ENDDUMP
