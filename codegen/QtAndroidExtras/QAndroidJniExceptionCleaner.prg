%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtAndroidExtras
$added=5,10,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAndroidJniExceptionCleaner(OutputMode outputMode = OutputMode::Silent)
$constructor=|new|QAndroidJniExceptionCleaner::OutputMode=QAndroidJniExceptionCleaner::Silent

$prototype=~QAndroidJniExceptionCleaner()
$deleteMethod

$prototypeV2=void clean()

$extraMethods

#pragma ENDDUMP
