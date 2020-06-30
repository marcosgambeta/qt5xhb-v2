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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMetaClassInfo()
$constructor=|new|

$deleteMethod

$prototypeV2=const char * name() const

$prototypeV2=const char * value() const

$prototypeV2=const QMetaObject * enclosingMetaObject() const

$extraMethods

#pragma ENDDUMP
