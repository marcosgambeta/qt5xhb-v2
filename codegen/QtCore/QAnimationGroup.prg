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

$beginClassFrom=QAbstractAnimation

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=void addAnimation( QAbstractAnimation * animation )

$prototypeV2=QAbstractAnimation * animationAt( int index ) const

$prototypeV2=int animationCount() const

$prototypeV2=void clear()

$prototypeV2=int indexOfAnimation( QAbstractAnimation * animation ) const

$prototypeV2=void insertAnimation( int index, QAbstractAnimation * animation )

$prototypeV2=void removeAnimation( QAbstractAnimation * animation )

$prototypeV2=QAbstractAnimation * takeAnimation( int index )

#pragma ENDDUMP
