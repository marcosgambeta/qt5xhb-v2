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

#include <QtCore/QStringList>
#include <QtCore/QVariantList>

$prototype=QJsonArray()
$internalConstructor=|new1|

$prototype=QJsonArray(const QJsonArray & other)
$internalConstructor=|new2|const QJsonArray &

/*
[1]QJsonArray()
[2]QJsonArray(const QJsonArray & other)
*/

HB_FUNC_STATIC( QJSONARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJsonArray_new1();
  }
  else if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    QJsonArray_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void append(const QJsonValue & value)
$method=|void|append|const QJsonValue &

$prototype=QJsonValue at(int i) const
$method=|QJsonValue|at|int

$prototype=bool contains(const QJsonValue & value) const
$method=|bool|contains|const QJsonValue &

$prototypeV2=int count() const

$prototypeV2=bool empty() const

$prototypeV2=QJsonValue first() const

$prototype=void insert(int i, const QJsonValue & value)
$method=|void|insert|int,const QJsonValue &

$prototypeV2=bool isEmpty() const

$prototypeV2=QJsonValue last() const

$prototypeV2=void pop_back()

$prototypeV2=void pop_front()

$prototype=void prepend(const QJsonValue & value)
$method=|void|prepend|const QJsonValue &

$prototype=void push_back(const QJsonValue & value)
$method=|void|push_back|const QJsonValue &

$prototype=void push_front(const QJsonValue & value)
$method=|void|push_front|const QJsonValue &

$prototype=void removeAt(int i)
$method=|void|removeAt|int

$prototypeV2=void removeFirst()

$prototypeV2=void removeLast()

$prototype=void replace(int i, const QJsonValue & value)
$method=|void|replace|int,const QJsonValue &

$prototypeV2=int size() const

$prototype=QJsonValue takeAt(int i)
$method=|QJsonValue|takeAt|int

$prototypeV2=QVariantList toVariantList() const

$prototype=static QJsonArray fromStringList(const QStringList & list)
$staticMethod=|QJsonArray|fromStringList|const QStringList &

$prototype=static QJsonArray fromVariantList(const QVariantList & list)
$staticMethod=|QJsonArray|fromVariantList|const QVariantList &

$extraMethods

#pragma ENDDUMP
