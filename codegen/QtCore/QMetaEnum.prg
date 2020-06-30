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

$prototype=QMetaEnum()
$constructor=|new|

$deleteMethod

$prototypeV2=const char * name() const

$prototypeV2=bool isFlag() const

$prototypeV2=int keyCount() const

$prototypeV2=const char * key( int index ) const

$prototypeV2=int value( int index ) const

$prototypeV2=const char * scope() const

$prototypeV2=int keyToValue( const char * key ) const
%% TODO: implementar segundo parametro

$prototypeV2=const char * valueToKey( int value ) const

$prototypeV2=int keysToValue( const char * keys ) const
%% TODO: implementar segundo parametro

$prototypeV2=QByteArray valueToKeys( int value ) const

$prototypeV2=const QMetaObject * enclosingMetaObject() const

$prototypeV2=bool isValid() const

$prototypeV2=5,12,0|const char * QMetaEnum::enumName() const

%% TODO: implementar $prototypeV2=5,5,0|static QMetaEnum QMetaEnum::fromType()

$prototypeV2=5,8,0|bool QMetaEnum::isScoped() const

$extraMethods

#pragma ENDDUMP
