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

$beginClassFrom=QAccessibleTextCursorEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleTextSelectionEvent(QObject *obj, int start, int end)
$constructor=|new|QObject *,int,int

$deleteMethod

$prototypeV2=void setSelection( int start, int end )

$prototypeV2=int selectionStart() const

$prototypeV2=int selectionEnd() const

#pragma ENDDUMP
