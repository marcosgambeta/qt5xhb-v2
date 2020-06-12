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

$prototype=QScriptContextInfo(const QScriptContext * context)
$internalConstructor=|new1|const QScriptContext *

$prototype=QScriptContextInfo(const QScriptContextInfo & other)
$internalConstructor=|new2|const QScriptContextInfo &

$prototype=QScriptContextInfo()
$internalConstructor=|new3|

/*
[1]QScriptContextInfo(const QScriptContext * context)
[2]QScriptContextInfo(const QScriptContextInfo & other)
[3]QScriptContextInfo()
*/

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQSCRIPTCONTEXT(1) )
  {
    QScriptContextInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTCONTEXTINFO(1) )
  {
    QScriptContextInfo_new2();
  }
  else if( ISNUMPAR(0) )
  {
    QScriptContextInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString fileName() const

$prototypeV2=int functionEndLineNumber() const

$prototypeV2=int functionMetaIndex() const

$prototypeV2=QString functionName() const

$prototypeV2=QStringList functionParameterNames() const

$prototypeV2=int functionStartLineNumber() const

$prototypeV2=QScriptContextInfo::FunctionType functionType() const

$prototypeV2=bool isNull() const

$prototypeV2=int lineNumber() const

$prototypeV2=qint64 scriptId() const

$extraMethods

#pragma ENDDUMP
