%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QQmlEngine

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QQmlApplicationEngine(QObject *parent=nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QQmlApplicationEngine(const QUrl &url, QObject *parent=nullptr)
$internalConstructor=|new2|const QUrl &,QObject *=nullptr

$prototype=QQmlApplicationEngine(const QString &filePath, QObject *parent=nullptr)
$internalConstructor=|new3|const QString &,QObject *=nullptr

//[1]QQmlApplicationEngine(QObject *parent=nullptr)
//[2]QQmlApplicationEngine(const QUrl &url, QObject *parent=nullptr)
//[3]QQmlApplicationEngine(const QString &filePath, QObject *parent=nullptr)

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QQmlApplicationEngine_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QQmlApplicationEngine_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QQmlApplicationEngine_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QList<QObject*> rootObjects()
$method=|QList<QObject *>|rootObjects|

$prototype=void load(const QUrl &url)
$internalMethod=|void|load,load1|const QUrl &

$prototype=void load(const QString &filePath)
$internalMethod=|void|load,load2|const QString &

//[1]void load(const QUrl &url)
//[2]void load(const QString &filePath)

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QQmlApplicationEngine_load1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QQmlApplicationEngine_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=load

$prototype=void loadData(const QByteArray &data, const QUrl &url = QUrl())
$method=|void|loadData|const QByteArray &,const QUrl &=QUrl()

%%
%% SIGNALS
%%

$prototype=void objectCreated( QObject * obj, const QUrl & url )
$signalMethod=|void|objectCreated|QObject *,const QUrl &

#pragma ENDDUMP
