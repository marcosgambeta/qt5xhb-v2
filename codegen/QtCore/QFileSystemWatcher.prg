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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

$prototype=QFileSystemWatcher(QObject * parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QFileSystemWatcher(const QStringList & paths, QObject * parent = nullptr)
$internalConstructor=|new2|const QStringList &,QObject *=nullptr

/*
[1]QFileSystemWatcher(QObject * parent = nullptr)
[2]QFileSystemWatcher(const QStringList & paths, QObject * parent = nullptr)
*/

HB_FUNC_STATIC( QFILESYSTEMWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QFileSystemWatcher_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && ISOPTQOBJECT(2) )
  {
    QFileSystemWatcher_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool addPath( const QString & path )

$prototypeV2=QStringList addPaths( const QStringList & paths )

$prototypeV2=QStringList directories() const

$prototypeV2=QStringList files() const

$prototypeV2=bool removePath( const QString & path )

$prototypeV2=QStringList removePaths( const QStringList & paths )

%%
%% SIGNALS
%%

$prototype=void directoryChanged( const QString & path )
$signalMethod=|void|directoryChanged|const QString &

$prototype=void fileChanged( const QString & path )
$signalMethod=|void|fileChanged|const QString &

#pragma ENDDUMP
