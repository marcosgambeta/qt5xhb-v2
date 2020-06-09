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

#include <QtCore/QJsonArray>
#include <QtCore/QJsonObject>

$prototype=QJsonValueRef(QJsonArray *array, int idx)
$internalConstructor=|new1|QJsonArray *,int

$prototype=QJsonValueRef(QJsonObject *object, int idx)
$internalConstructor=|new2|QJsonObject *,int

/*
[1]QJsonValueRef(QJsonArray *array, int idx)
[2]QJsonValueRef(QJsonObject *object, int idx)
*/

HB_FUNC_STATIC( QJSONVALUEREF_NEW )
{
  if( ISNUMPAR(2) && ISQJSONARRAY(1) && ISNUM(2) )
  {
    QJsonValueRef_new1();
  }
  else if( ISNUMPAR(2) && ISQJSONOBJECT(1) && ISNUM(2) )
  {
    QJsonValueRef_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QJsonValue::Type type() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isBool() const

$prototypeV2=bool isDouble() const

$prototypeV2=bool isString() const

$prototypeV2=bool isArray() const

$prototypeV2=bool isObject() const

$prototypeV2=bool isUndefined() const

$prototypeV2=bool toBool() const

$prototypeV2=int toInt() const

$prototypeV2=double toDouble() const

$prototypeV2=QString toString() const

$prototypeV2=QJsonArray toArray() const

$prototypeV2=QJsonObject toObject() const

$extraMethods

#pragma ENDDUMP
