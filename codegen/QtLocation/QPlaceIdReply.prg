%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPlaceReply

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QPlaceIdReply(OperationType operationType, QObject *parent = nullptr)
$constructor=|new|QPlaceIdReply::OperationType,QObject *=nullptr

$deleteMethod

$prototypeV2=QPlaceReply::Type type() const

$prototypeV2=QPlaceIdReply::OperationType operationType() const

$prototypeV2=QString id() const

#pragma ENDDUMP
