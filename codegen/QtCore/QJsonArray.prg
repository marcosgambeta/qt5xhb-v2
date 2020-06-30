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

$prototypeV2=void append( const QJsonValue & value )

$prototypeV2=QJsonValue at( int i ) const

$prototypeV2=bool contains( const QJsonValue & value ) const

$prototypeV2=int count() const

$prototypeV2=bool empty() const

$prototypeV2=QJsonValue first() const

$prototypeV2=void insert( int i, const QJsonValue & value )

$prototypeV2=bool isEmpty() const

$prototypeV2=QJsonValue last() const

$prototypeV2=void pop_back()

$prototypeV2=void pop_front()

$prototypeV2=void prepend( const QJsonValue & value )

$prototypeV2=void push_back( const QJsonValue & value )

$prototypeV2=void push_front( const QJsonValue & value )

$prototypeV2=void removeAt( int i )

$prototypeV2=void removeFirst()

$prototypeV2=void removeLast()

$prototypeV2=void replace( int i, const QJsonValue & value )

$prototypeV2=int size() const

$prototypeV2=QJsonValue takeAt( int i )

$prototypeV2=QVariantList toVariantList() const

$prototypeV2=static QJsonArray fromStringList( const QStringList & list )

$prototypeV2=static QJsonArray fromVariantList( const QVariantList & list )

$extraMethods

#pragma ENDDUMP
