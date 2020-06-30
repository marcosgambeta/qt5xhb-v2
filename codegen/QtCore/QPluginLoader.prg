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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPluginLoader ( QObject * parent = nullptr )
$internalConstructor=|new1|QObject *=nullptr

$prototype=QPluginLoader ( const QString & fileName, QObject * parent = nullptr )
$internalConstructor=|new2|const QString &,QObject *=nullptr

/*
[1]QPluginLoader ( QObject * parent = nullptr )
[2]QPluginLoader ( const QString & fileName, QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QPLUGINLOADER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QPluginLoader_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QPluginLoader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString errorString() const

$prototypeV2=QString fileName() const

$prototypeV2=QObject * instance()

$prototypeV2=bool isLoaded() const

$prototypeV2=bool load()

$prototypeV2=QLibrary::LoadHints loadHints() const

$prototypeV2=void setFileName( const QString & fileName )

$prototypeV2=void setLoadHints( QLibrary::LoadHints loadHints )

$prototypeV2=bool unload()

$prototypeV2=QObjectList staticInstances()

#pragma ENDDUMP
