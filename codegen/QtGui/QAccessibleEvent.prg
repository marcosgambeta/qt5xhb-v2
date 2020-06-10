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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleEvent(QObject *obj, QAccessible::Event typ)
$constructor=|new|QObject *,QAccessible::Event

$deleteMethod

$prototypeV2=QAccessible::Event type() const

$prototypeV2=QObject * object() const

$prototype=void setChild(int chld)
$method=|void|setChild|int

$prototypeV2=int child() const

$prototypeV2=virtual QAccessibleInterface * accessibleInterface() const

$extraMethods

#pragma ENDDUMP
