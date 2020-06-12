%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScriptSyntaxCheckResult(const QScriptSyntaxCheckResult & other)
$constructor=|new|const QScriptSyntaxCheckResult &

$deleteMethod

$prototypeV2=int errorColumnNumber() const

$prototypeV2=int errorLineNumber() const

$prototypeV2=QString errorMessage() const

$prototypeV2=QScriptSyntaxCheckResult::State state() const

$extraMethods

#pragma ENDDUMP
