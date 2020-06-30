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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDeclarative/QDeclarativeEngine>

$prototype=QDeclarativeContext ( QDeclarativeEngine * engine, QObject * parent = nullptr )
$internalConstructor=|new1|QDeclarativeEngine *,QObject *=nullptr

$prototype=QDeclarativeContext ( QDeclarativeContext * parentContext, QObject * parent = nullptr )
$internalConstructor=|new2|QDeclarativeContext *,QObject *=nullptr

/*
[1]QDeclarativeContext ( QDeclarativeEngine * engine, QObject * parent = nullptr )
[2]QDeclarativeContext ( QDeclarativeContext * parentContext, QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QDECLARATIVECONTEXT_NEW )
{
  if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && ISOPTQOBJECT(2) )
  {
    QDeclarativeContext_new1();
  }
  else if( ISBETWEEN(1,2) && ISQDECLARATIVECONTEXT(1) && ISOPTQOBJECT(2) )
  {
    QDeclarativeContext_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QUrl baseUrl() const

$prototypeV2=QObject * contextObject() const

$prototypeV2=QVariant contextProperty( const QString & name ) const

$prototypeV2=QDeclarativeEngine * engine() const

$prototypeV2=bool isValid() const

$prototypeV2=QDeclarativeContext * parentContext() const

$prototypeV2=QUrl resolvedUrl( const QUrl & src )

$prototypeV2=void setBaseUrl( const QUrl & baseUrl )

$prototypeV2=void setContextObject( QObject * object )

$prototype=void setContextProperty ( const QString & name, QObject * value )
$internalMethod=|void|setContextProperty,setContextProperty1|const QString &,QObject *

$prototype=void setContextProperty ( const QString & name, const QVariant & value )
$internalMethod=|void|setContextProperty,setContextProperty2|const QString &,const QVariant &

/*
[1]void setContextProperty ( const QString & name, QObject * value )
[2]void setContextProperty ( const QString & name, const QVariant & value )
*/

HB_FUNC_STATIC( QDECLARATIVECONTEXT_SETCONTEXTPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QDeclarativeContext_setContextProperty1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    QDeclarativeContext_setContextProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setContextProperty

#pragma ENDDUMP
