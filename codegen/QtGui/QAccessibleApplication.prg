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

$beginClassFrom=QAccessibleObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QWindow>

$prototype=QAccessibleApplication()
$constructor=|new|

$prototypeV2=QWindow *window() const

$prototypeV2=int childCount() const

$prototypeV2=int indexOfChild( const QAccessibleInterface * ) const

$prototypeV2=QAccessibleInterface * focusChild() const

$prototypeV2=QAccessibleInterface * parent() const

$prototypeV2=QAccessibleInterface * child( int index ) const

$prototypeV2=QString text( QAccessible::Text t ) const

$prototypeV2=QAccessible::Role role() const

#pragma ENDDUMP
