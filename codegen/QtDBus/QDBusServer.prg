%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QtDBus/QDBusError>

$prototype=QDBusServer(const QString &address, QObject *parent = nullptr)
$internalConstructor=|new1|const QString &,QObject *=nullptr

$prototype=QDBusServer(QObject *parent = nullptr)
$internalConstructor=|new2|QObject *=nullptr

//[1]QDBusServer(const QString &address, QObject *parent = nullptr)
//[2]QDBusServer(QObject *parent = nullptr)

HB_FUNC_STATIC( QDBUSSERVER_NEW )
{
  // TODO: implementar
}

$deleteMethod

$prototype=bool isConnected() const
$method=|bool|isConnected|

$prototype=QDBusError lastError() const
$method=|QDBusError|lastError|

$prototype=QString address() const
$method=|QString|address|

%%
%% SIGNALS
%%

$prototype=void newConnection( const QDBusConnection & connection )
$signalMethod=|void|newConnection|const QDBusConnection &

#pragma ENDDUMP
