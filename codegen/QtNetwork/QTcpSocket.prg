%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractSocket

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QTcpSocket(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QTcpSocket(QTcpSocketPrivate &dd, QObject *parent = nullptr) [protected]

$prototype=QTcpSocket(QAbstractSocket::SocketType socketType, QTcpSocketPrivate &dd, QObject *parent = nullptr) [protected]

$prototype=virtual ~QTcpSocket()
$deleteMethod

#pragma ENDDUMP
