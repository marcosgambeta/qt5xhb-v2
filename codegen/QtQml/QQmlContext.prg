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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtQml/QQmlEngine>

$prototype=QQmlContext(QQmlEngine * engine, QObject * parent = nullptr)
$internalConstructor=|new1|QQmlEngine *,QObject *=nullptr

$prototype=QQmlContext(QQmlContext * parentContext, QObject * parent = nullptr)
$internalConstructor=|new2|QQmlContext *,QObject *=nullptr

/*
[1]QQmlContext(QQmlEngine * engine, QObject * parent = nullptr)
[2]QQmlContext(QQmlContext * parentContext, QObject * parent = nullptr)
*/

HB_FUNC_STATIC( QQMLCONTEXT_NEW )
{
  if( ISBETWEEN(1,2) && ISQQMLENGINE(1) && ISOPTQOBJECT(2) )
  {
    QQmlContext_new1();
  }
  else if( ISBETWEEN(1,2) && ISQQMLCONTEXT(1) && ISOPTQOBJECT(2) )
  {
    QQmlContext_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QUrl baseUrl() const

$prototypeV2=QObject * contextObject() const

$prototype=QVariant contextProperty(const QString & name) const
$method=|QVariant|contextProperty|const QString &

$prototypeV2=QQmlEngine * engine() const

$prototypeV2=bool isValid() const

$prototype=QString nameForObject(QObject * object) const
$method=|QString|nameForObject|QObject *

$prototypeV2=QQmlContext * parentContext() const

$prototype=QUrl resolvedUrl(const QUrl & src)
$method=|QUrl|resolvedUrl|const QUrl &

$prototype=void setBaseUrl(const QUrl & baseUrl)
$method=|void|setBaseUrl|const QUrl &

$prototype=void setContextObject(QObject * object)
$method=|void|setContextObject|QObject *

$prototype=void setContextProperty(const QString & name, QObject * value)
$internalMethod=|void|setContextProperty,setContextProperty1|const QString &,QObject *

$prototype=void setContextProperty(const QString & name, const QVariant & value)
$internalMethod=|void|setContextProperty,setContextProperty2|const QString &,const QVariant &

/*
[1]void setContextProperty(const QString & name, QObject * value)
[2]void setContextProperty(const QString & name, const QVariant & value)
*/

HB_FUNC_STATIC( QQMLCONTEXT_SETCONTEXTPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QQmlContext_setContextProperty1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    QQmlContext_setContextProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setContextProperty

#pragma ENDDUMP
