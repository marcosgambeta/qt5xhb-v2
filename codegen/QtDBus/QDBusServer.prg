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

#include <QtDBus/QDBusError>

$prototype=QDBusServer(const QString &address, QObject *parent = nullptr)
$internalConstructor=|new1|const QString &,QObject *=nullptr

$prototype=QDBusServer(QObject *parent = nullptr)
$internalConstructor=|new2|QObject *=nullptr

/*
[1]QDBusServer(const QString &address, QObject *parent = nullptr)
[2]QDBusServer(QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QDBUSSERVER_NEW )
{
  // TODO: implementar
}

$deleteMethod

$prototypeV2=bool isConnected() const

$prototypeV2=QDBusError lastError() const

$prototypeV2=QString address() const

%%
%% SIGNALS
%%

$prototype=void newConnection( const QDBusConnection & connection )
$signalMethod=|void|newConnection|const QDBusConnection &

#pragma ENDDUMP
