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

$beginClassFrom=QVariantAnimation

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPropertyAnimation ( QObject * parent = nullptr )
$internalConstructor=|new1|QObject *=nullptr

$prototype=QPropertyAnimation ( QObject * target, const QByteArray & propertyName, QObject * parent = nullptr )
$internalConstructor=|new2|QObject *,const QByteArray &,QObject *=nullptr

/*
[1]QPropertyAnimation ( QObject * parent = nullptr )
[2]QPropertyAnimation ( QObject * target, const QByteArray & propertyName, QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QPROPERTYANIMATION_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QPropertyAnimation_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISQBYTEARRAY(2) && ISOPTQOBJECT(3) )
  {
    QPropertyAnimation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QByteArray propertyName() const

$prototypeV2=void setPropertyName( const QByteArray & propertyName )

$prototypeV2=void setTargetObject( QObject * target )

$prototypeV2=QObject * targetObject() const

#pragma ENDDUMP
