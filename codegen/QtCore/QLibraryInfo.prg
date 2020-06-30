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

$deleteMethod

$prototypeV2=static QString licensee()

$prototypeV2=static QString licensedProducts()

$prototypeV2=static QDate buildDate()

$prototypeV2=static bool isDebugBuild()

$prototypeV2=static QString location( QLibraryInfo::LibraryLocation )

$extraMethods

#pragma ENDDUMP
