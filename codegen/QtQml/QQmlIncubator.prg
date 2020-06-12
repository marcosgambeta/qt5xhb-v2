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

$prototype=QQmlIncubator(IncubationMode mode = Asynchronous)
$constructor=|new|QQmlIncubator::IncubationMode=QQmlIncubator::Asynchronous

$deleteMethod

$prototypeV2=void clear()

$prototypeV2=void forceCompletion()

$prototypeV2=QQmlIncubator::IncubationMode incubationMode() const

$prototypeV2=bool isError() const

$prototypeV2=bool isLoading() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isReady() const

$prototypeV2=QObject * object() const

$prototypeV2=QQmlIncubator::Status status() const

$extraMethods

#pragma ENDDUMP
