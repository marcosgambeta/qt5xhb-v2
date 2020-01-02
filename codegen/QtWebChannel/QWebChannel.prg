%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebChannel
$added=5,4,0

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

$prototype=explicit QWebChannel(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=Q_INVOKABLE void registerObject(const QString &id, QObject *object)
$method=|void|registerObject|const QString &,QObject *

$prototype=Q_INVOKABLE void deregisterObject(QObject *object)
$method=|void|deregisterObject|QObject *

$prototype=bool blockUpdates() const
$method=|bool|blockUpdates|

$prototype=void setBlockUpdates(bool block)
$method=|void|setBlockUpdates|bool

$prototype=void connectTo(QWebChannelAbstractTransport *transport)
$method=|void|connectTo|QWebChannelAbstractTransport *

$prototype=void disconnectFrom(QWebChannelAbstractTransport *transport)
$method=|void|disconnectFrom|QWebChannelAbstractTransport *

%%
%% SIGNALS
%%

$prototype=void blockUpdatesChanged( bool block )
$signalMethod=|void|blockUpdatesChanged|bool

#pragma ENDDUMP
