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

$prototype=QJSValueIterator(const QJSValue & object)
$constructor=|new|const QJSValue &

$deleteMethod

$prototypeV2=bool hasNext() const

$prototypeV2=QString name() const

$prototypeV2=bool next()

$prototypeV2=QJSValue value() const

$extraMethods

#pragma ENDDUMP
