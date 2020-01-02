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

$beginClassFrom=QWebChannel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QQmlWebChannel(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=Q_INVOKABLE void registerObjects(const QVariantMap &objects)
%% TODO: implementar
%% $method=|void|registerObjects|const QVariantMap &

$prototype=QQmlListProperty<QObject> registeredObjects()
%% TODO: implementar
%% $method=|QQmlListProperty<QObject>|registeredObjects|

$prototype=QQmlListProperty<QObject> transports()
%% TODO: implementar
%% $method=|QQmlListProperty<QObject>|transports|

$prototype=static QQmlWebChannelAttached *qmlAttachedProperties(QObject *obj)
%% TODO: implementar
%% $staticMethod=|QQmlWebChannelAttached *|qmlAttachedProperties|QObject *

$prototype=Q_INVOKABLE void connectTo(QObject *transport)
$method=|void|connectTo|QObject *

$prototype=Q_INVOKABLE void disconnectFrom(QObject *transport)
$method=|void|disconnectFrom|QObject *

#pragma ENDDUMP
