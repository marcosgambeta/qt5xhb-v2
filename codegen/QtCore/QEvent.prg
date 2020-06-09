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

$prototype=QEvent ( Type type )
$constructor=|new|QEvent::Type

$deleteMethod

$prototypeV2=void accept()

$prototypeV2=void ignore()

$prototypeV2=bool isAccepted() const

$prototype=void setAccepted ( bool accepted )
$method=|void|setAccepted|bool

$prototypeV2=bool spontaneous() const

$prototypeV2=QEvent::Type type() const

$prototype=static int registerEventType ( int hint = -1 )
$staticMethod=|int|registerEventType|int=-1

$extraMethods

#pragma ENDDUMP
