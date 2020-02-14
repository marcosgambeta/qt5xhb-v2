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

$prototype=explicit QPlaceSearchSuggestionReply(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=QStringList suggestions() const
$method=|QStringList|suggestions|

$prototype=Type type() const
$method=|QPlaceReply::Type|type|

#pragma ENDDUMP
