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

$beginClassFrom=QAccessibleEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleTextCursorEvent(QObject *obj, int cursorPos)
$constructor=|new|QObject *,int

$deleteMethod

$prototypeV2=void setCursorPosition( int position )

$prototypeV2=int cursorPosition() const

#pragma ENDDUMP
