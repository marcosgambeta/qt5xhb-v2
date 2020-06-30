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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=static QAccessibleInterface * queryAccessibleInterface( QObject * )

$prototypeV2=static void updateAccessibility( QAccessibleEvent * event )

$prototypeV2=static bool isActive()

$prototypeV2=static void setRootObject( QObject * object )

$prototypeV2=static void cleanup()

#pragma ENDDUMP
