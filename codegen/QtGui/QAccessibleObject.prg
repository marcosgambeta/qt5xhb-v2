%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAccessibleInterface

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=bool isValid() const

$prototypeV2=QObject * object() const

$prototypeV2=QRect rect() const

$prototypeV2=void setText( QAccessible::Text t, const QString & text )

$prototypeV2=QAccessibleInterface * childAt( int x, int y ) const

#pragma ENDDUMP
