%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtAndroidExtras
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAndroidJniEnvironment()
$constructor=|new|

$prototype=~QAndroidJniEnvironment()
$deleteMethod

$prototype=static JavaVM *javaVM()
$staticMethod=|JavaVM *|javaVM|

$prototype=jclass findClass(const char *className)
%% TODO: implementar
%% $method=5,12,0|jclass|findClass|const char *

$extraMethods

#pragma ENDDUMP
