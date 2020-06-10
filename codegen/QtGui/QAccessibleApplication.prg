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

$prototype=int indexOfChild(const QAccessibleInterface*) const
$method=|int|indexOfChild|const QAccessibleInterface *

$prototypeV2=QAccessibleInterface * focusChild() const

$prototypeV2=QAccessibleInterface * parent() const

$prototype=QAccessibleInterface *child(int index) const
$method=|QAccessibleInterface *|child|int

$prototype=QString text(QAccessible::Text t) const
$method=|QString|text|QAccessible::Text

$prototypeV2=QAccessible::Role role() const

#pragma ENDDUMP
