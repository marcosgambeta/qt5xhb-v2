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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDeclarative/QDeclarativeContext>
#include <QtDeclarative/QDeclarativeEngine>

$prototype=QDeclarativeExpression ()
$internalConstructor=|new1|

$prototype=QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = nullptr )
$internalConstructor=|new2|QDeclarativeContext *,QObject *,const QString &,QObject *=nullptr

/*
[1]QDeclarativeExpression ()
[2]QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeExpression_new1();
  }
  else if( ISBETWEEN(3,4) && ISQDECLARATIVECONTEXT(1) && ISQOBJECT(2) && ISCHAR(3) && ISOPTQOBJECT(4) )
  {
    QDeclarativeExpression_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void clearError()

$prototypeV2=QDeclarativeContext * context() const

$prototypeV2=QDeclarativeEngine * engine() const

$prototypeV2=QDeclarativeError error() const

$prototypeV2=QVariant evaluate( bool * valueIsUndefined = nullptr )

$prototypeV2=QString expression() const

$prototypeV2=bool hasError() const

$prototypeV2=int lineNumber() const

$prototypeV2=bool notifyOnValueChanged() const

$prototypeV2=QObject * scopeObject() const

$prototypeV2=void setExpression( const QString & expression )

$prototypeV2=void setNotifyOnValueChanged( bool notifyOnChange )

$prototypeV2=void setSourceLocation( const QString & url, int line )

$prototypeV2=QString sourceFile() const

%%
%% SIGNALS
%%

$prototype=void valueChanged()
$signalMethod=|void|valueChanged|

#pragma ENDDUMP
