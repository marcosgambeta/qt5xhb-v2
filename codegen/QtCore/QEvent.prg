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

$prototypeV2=void setAccepted( bool accepted )

$prototypeV2=bool spontaneous() const

$prototypeV2=QEvent::Type type() const

$prototypeV2=static int registerEventType( int hint = -1 )

$extraMethods

#pragma ENDDUMP
