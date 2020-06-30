%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=ActiveQt

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAxObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAxScriptEngine ( const QString & language, QAxScript * script )
$constructor=|new|const QString &,QAxScript *

$deleteMethod

$prototypeV2=void addItem( const QString & name )

$prototypeV2=bool hasIntrospection() const

$prototypeV2=bool isValid() const

$prototypeV2=QString scriptLanguage() const

$prototypeV2=void setState( QAxScriptEngine::State st )

$prototypeV2=QAxScriptEngine::State state() const

#pragma ENDDUMP
