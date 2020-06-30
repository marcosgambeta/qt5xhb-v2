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

$prototype=QJsonObject()
$internalConstructor=|new1|

$prototype=QJsonObject(const QJsonObject & other)
$internalConstructor=|new2|const QJsonObject &

/*
[1]QJsonObject()
[2]QJsonObject(const QJsonObject & other)
*/

HB_FUNC_STATIC( QJSONOBJECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJsonObject_new1();
  }
  else if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    QJsonObject_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool contains( const QString & key ) const

$prototypeV2=int count() const

$prototypeV2=bool empty() const

$prototypeV2=bool isEmpty() const

$prototypeV2=QStringList keys() const

$prototypeV2=int length() const

$prototypeV2=void remove( const QString & key )

$prototypeV2=int size() const

$prototypeV2=QJsonValue take( const QString & key )

$prototypeV2=QJsonValue value( const QString & key ) const

$extraMethods

#pragma ENDDUMP
