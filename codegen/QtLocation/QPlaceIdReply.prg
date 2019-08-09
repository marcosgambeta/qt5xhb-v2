%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QPlaceReply::Type type() const
$method=|QPlaceReply::Type|type|

$prototype=OperationType operationType() const
$method=|QPlaceIdReply::OperationType|operationType|

$prototype=QString id() const
$method=|QString|id|

#pragma ENDDUMP
