%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

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

#include <QtDBus/QDBusConnection>

$prototype=explicit QDBusServiceWatcher(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = nullptr)
$internalConstructor=|new2|const QString &,const QDBusConnection &,QDBusServiceWatcher::WatchMode=QDBusServiceWatcher::WatchForOwnerChange,QObject *=nullptr

/*
[1]explicit QDBusServiceWatcher(QObject *parent = nullptr)
[2]QDBusServiceWatcher(const QString &service, const QDBusConnection &connection, WatchMode watchMode = WatchForOwnerChange, QObject *parent = nullptr)
*/

HB_FUNC( QDBUSSERVICEWATCHER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDBusServiceWatcher_new1();
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISQDBUSCONNECTION(2) && ISOPTNUM(3) && ISOPTQOBJECT(4) )
  {
    QDBusServiceWatcher_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QStringList watchedServices() const

$prototypeV2=void setWatchedServices( const QStringList & services )

$prototypeV2=void addWatchedService( const QString & newService )

$prototypeV2=bool removeWatchedService( const QString & service )

$prototypeV2=QDBusServiceWatcher::WatchMode watchMode() const

$prototypeV2=void setWatchMode( QDBusServiceWatcher::WatchMode mode )

$prototypeV2=QDBusConnection connection() const

$prototypeV2=void setConnection( const QDBusConnection & connection )

%%
%% SIGNALS
%%

$prototype=void serviceRegistered( const QString & service )
$signalMethod=|void|serviceRegistered|const QString &

$prototype=void serviceUnregistered( const QString & service )
$signalMethod=|void|serviceUnregistered|const QString &

$prototype=void serviceOwnerChanged( const QString & service, const QString & oldOwner, const QString & newOwner )
$signalMethod=|void|serviceOwnerChanged|const QString &,const QString &,const QString &

#pragma ENDDUMP
