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

$prototype=QCollatorSortKey(const QCollatorSortKey &other)
$constructor=|new|const QCollatorSortKey &

$deleteMethod

$prototypeV2=void swap( QCollatorSortKey & other )

$prototypeV2=int compare( const QCollatorSortKey & key ) const

$extraMethods

#pragma ENDDUMP
