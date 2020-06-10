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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDeclarative/QDeclarativeContext>

$prototype=QDeclarativeComponent ( QDeclarativeEngine * engine, QObject * parent = nullptr )
$internalConstructor=|new1|QDeclarativeEngine *,QObject *=nullptr

$prototype=QDeclarativeComponent ( QDeclarativeEngine * engine, const QString & fileName, QObject * parent = nullptr )
$internalConstructor=|new2|QDeclarativeEngine *,const QString &,QObject *=nullptr

$prototype=QDeclarativeComponent ( QDeclarativeEngine * engine, const QUrl & url, QObject * parent = nullptr )
$internalConstructor=|new3|QDeclarativeEngine *,const QUrl &,QObject *=nullptr

/*
[1]QDeclarativeComponent ( QDeclarativeEngine * engine, QObject * parent = nullptr )
[2]QDeclarativeComponent ( QDeclarativeEngine * engine, const QString & fileName, QObject * parent = nullptr )
[3]QDeclarativeComponent ( QDeclarativeEngine * engine, const QUrl & url, QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW )
{
  if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && ISOPTQOBJECT(2) )
  {
    QDeclarativeComponent_new1();
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    QDeclarativeComponent_new2();
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISQURL(2) && ISOPTQOBJECT(3) )
  {
    QDeclarativeComponent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=virtual QObject * beginCreate ( QDeclarativeContext * context )
$virtualMethod=|QObject *|beginCreate|QDeclarativeContext *

$prototypeV2=virtual void completeCreate()

$prototype=virtual QObject * create ( QDeclarativeContext * context = nullptr )
$virtualMethod=|QObject *|create|QDeclarativeContext *=nullptr

$prototypeV2=QDeclarativeContext * creationContext() const

$prototype=QList<QDeclarativeError> errors () const
$method=|QList<QDeclarativeError>|errors|

$prototypeV2=bool isError() const

$prototypeV2=bool isLoading() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isReady() const

$prototype=void loadUrl ( const QUrl & url )
$method=|void|loadUrl|const QUrl &

$prototypeV2=qreal progress() const

$prototype=void setData ( const QByteArray & data, const QUrl & url )
$method=|void|setData|const QByteArray &,const QUrl &

$prototypeV2=QDeclarativeComponent::Status status() const

$prototypeV2=QUrl url() const

%%
%% SIGNALS
%%

$prototype=void progressChanged( qreal progress )
$signalMethod=|void|progressChanged|qreal

$prototype=void statusChanged( QDeclarativeComponent::Status status )
$signalMethod=|void|statusChanged|QDeclarativeComponent::Status

#pragma ENDDUMP
