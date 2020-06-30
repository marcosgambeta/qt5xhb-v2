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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QShortcutEvent(const QKeySequence &key, int id, bool ambiguous = false)
$constructor=|new|const QKeySequence &,int,bool=false

$deleteMethod

$prototypeV2=const QKeySequence & key() const

$prototypeV2=int shortcutId() const

$prototypeV2=bool isAmbiguous() const

#pragma ENDDUMP
