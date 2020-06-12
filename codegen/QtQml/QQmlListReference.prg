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

$prototype=QQmlListReference()
$internalConstructor=|new1|

$prototype=QQmlListReference(QObject * object, const char * property, QQmlEngine * engine = nullptr)
$internalConstructor=|new2|QObject *,const char *,QQmlEngine *=nullptr

/*
[1]QQmlListReference()
[2]QQmlListReference(QObject * object, const char * property, QQmlEngine * engine = nullptr)
*/

HB_FUNC_STATIC( QQMLLISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QQmlListReference_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQQMLENGINE(3)||ISNIL(3)) )
  {
    QQmlListReference_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool append(QObject * object) const
$method=|bool|append|QObject *

$prototype=QObject * at(int index) const
$method=|QObject *|at|int

$prototypeV2=bool canAppend() const

$prototypeV2=bool canAt() const

$prototypeV2=bool canClear() const

$prototypeV2=bool canCount() const

$prototypeV2=bool clear() const

$prototypeV2=int count() const

$prototypeV2=bool isValid() const

$prototype=const QMetaObject * listElementType() const
$method=|const QMetaObject *|listElementType|

$prototypeV2=QObject * object() const

$extraMethods

#pragma ENDDUMP
