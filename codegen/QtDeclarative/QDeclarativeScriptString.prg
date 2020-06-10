%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDeclarative/QDeclarativeContext>

$prototype=QDeclarativeScriptString ()
$internalConstructor=|new1|

$prototype=QDeclarativeScriptString ( const QDeclarativeScriptString & other )
$internalConstructor=|new2|const QDeclarativeScriptString &

/*
[1]QDeclarativeScriptString ()
[2]QDeclarativeScriptString ( const QDeclarativeScriptString & other )
*/

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeScriptString_new1();
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVESCRIPTSTRING(1) )
  {
    QDeclarativeScriptString_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototypeV2=QDeclarativeContext * context() const

$prototypeV2=QObject * scopeObject() const

$prototypeV2=QString script() const

$prototype=void setContext ( QDeclarativeContext * context )
$method=|void|setContext|QDeclarativeContext *

$prototype=void setScopeObject ( QObject * object )
$method=|void|setScopeObject|QObject *

$prototype=void setScript ( const QString & script )
$method=|void|setScript|const QString &

$extraMethods

#pragma ENDDUMP
