%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QQmlScriptString()
$internalConstructor=|new1|

$prototype=QQmlScriptString(const QQmlScriptString & other)
$internalConstructor=|new2|const QQmlScriptString &

/*
[1]QQmlScriptString()
[2]QQmlScriptString(const QQmlScriptString & other)
*/

HB_FUNC_STATIC( QQMLSCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    QQmlScriptString_new1();
  }
  else if( ISNUMPAR(1) && ISQQMLSCRIPTSTRING(1) )
  {
    QQmlScriptString_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool booleanLiteral(bool * ok) const
$method=|bool|booleanLiteral|bool *

$prototypeV2=bool isEmpty() const

$prototypeV2=bool isNullLiteral() const

$prototypeV2=bool isUndefinedLiteral() const

$prototype=qreal numberLiteral(bool * ok) const
$method=|qreal|numberLiteral|bool *

$prototypeV2=QString stringLiteral() const

$extraMethods

#pragma ENDDUMP
