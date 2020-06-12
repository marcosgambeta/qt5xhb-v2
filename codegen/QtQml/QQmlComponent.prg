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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtQml/QQmlContext>

$prototype=QQmlComponent(QQmlEngine * engine, QObject * parent = nullptr)
$internalConstructor=|new1|QQmlEngine *,QObject *=nullptr

$prototype=QQmlComponent(QQmlEngine * engine, const QString & fileName, QObject * parent = nullptr)
$internalConstructor=|new2|QQmlEngine *,const QString &,QObject *=nullptr

$prototype=QQmlComponent(QQmlEngine * engine, const QString & fileName, CompilationMode mode, QObject * parent = nullptr)
$internalConstructor=|new3|QQmlEngine *,const QString &,QQmlComponent::CompilationMode,QObject *=nullptr

$prototype=QQmlComponent(QQmlEngine * engine, const QUrl & url, QObject * parent = nullptr)
$internalConstructor=|new4|QQmlEngine *,const QUrl &,QObject *=nullptr

$prototype=QQmlComponent(QQmlEngine * engine, const QUrl & url, CompilationMode mode, QObject * parent = nullptr)
$internalConstructor=|new5|QQmlEngine *,const QUrl &,QQmlComponent::CompilationMode,QObject *=nullptr

/*
[1]QQmlComponent(QQmlEngine * engine, QObject * parent = nullptr)
[2]QQmlComponent(QQmlEngine * engine, const QString & fileName, QObject * parent = nullptr)
[3]QQmlComponent(QQmlEngine * engine, const QString & fileName, CompilationMode mode, QObject * parent = nullptr)
[4]QQmlComponent(QQmlEngine * engine, const QUrl & url, QObject * parent = nullptr)
[5]QQmlComponent(QQmlEngine * engine, const QUrl & url, CompilationMode mode, QObject * parent = nullptr)
*/

HB_FUNC_STATIC( QQMLCOMPONENT_NEW )
{
  if( ISBETWEEN(1,2) && ISQQMLENGINE(1) && ISOPTQOBJECT(2) )
  {
    QQmlComponent_new1();
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    QQmlComponent_new2();
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISCHAR(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QQmlComponent_new3();
  }
  else if( ISBETWEEN(2,3) && ISQQMLENGINE(1) && ISQURL(2) && ISOPTQOBJECT(3) )
  {
    QQmlComponent_new4();
  }
  else if( ISBETWEEN(3,4) && ISQQMLENGINE(1) && ISQURL(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QQmlComponent_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=virtual QObject * beginCreate(QQmlContext * publicContext)
$virtualMethod=|QObject *|beginCreate|QQmlContext *

$prototypeV2=virtual void completeCreate()

$prototype=virtual QObject * create(QQmlContext * context = nullptr)
$internalVirtualMethod=|QObject *|create,create1|QQmlContext *=nullptr

$prototype=void create(QQmlIncubator & incubator, QQmlContext * context = nullptr, QQmlContext * forContext = nullptr)
$internalMethod=|void|create,create2|QQmlIncubator &,QQmlContext *=nullptr,QQmlContext *=nullptr

/*
[1]virtual QObject * create(QQmlContext * context = nullptr)
[2]void create(QQmlIncubator & incubator, QQmlContext * context = nullptr, QQmlContext * forContext = nullptr)
*/

HB_FUNC_STATIC( QQMLCOMPONENT_CREATE )
{
  if( ISBETWEEN(0,1) && (ISQQMLCONTEXT(1)||ISNIL(1)) )
  {
    QQmlComponent_create1();
  }
  else if( ISBETWEEN(1,3) && ISQQMLINCUBATOR(1) && (ISQQMLCONTEXT(2)||ISNIL(2)) && (ISQQMLCONTEXT(3)||ISNIL(3)) )
  {
    QQmlComponent_create2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=create

$prototypeV2=QQmlContext * creationContext() const

$prototypeV2=bool isError() const

$prototypeV2=bool isLoading() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isReady() const

$prototypeV2=qreal progress() const

$prototypeV2=QQmlComponent::Status status() const

$prototypeV2=QUrl url() const

$prototype=void loadUrl(const QUrl & url)
$internalMethod=|void|loadUrl,loadUrl1|const QUrl &

$prototype=void loadUrl(const QUrl & url, CompilationMode mode)
$internalMethod=|void|loadUrl,loadUrl2|const QUrl &,QQmlComponent::CompilationMode

/*
[1]void loadUrl(const QUrl & url)
[2]void loadUrl(const QUrl & url, CompilationMode mode)
*/

HB_FUNC_STATIC( QQMLCOMPONENT_LOADURL )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QQmlComponent_loadUrl1();
  }
  else if( ISNUMPAR(2) && ISQURL(1) && ISNUM(2) )
  {
    QQmlComponent_loadUrl2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=loadUrl

$prototype=void setData(const QByteArray & data, const QUrl & url)
$method=|void|setData|const QByteArray &,const QUrl &

%%
%% SIGNALS
%%

$prototype=void progressChanged( qreal progress )
$signalMethod=|void|progressChanged|qreal

$prototype=void statusChanged( QQmlComponent::Status status )
$signalMethod=|void|statusChanged|QQmlComponent::Status

#pragma ENDDUMP
