%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork
$added=5,8,0

%% TODO: class under condition
%% #if !defined(QT_NO_SCTP) || defined(Q_CLANG_QDOC)
%% #endif // QT_NO_SCTP

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTcpServer

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
#include <QtNetwork/QSctpSocket>
#endif
#endif

$prototype=explicit QSctpServer(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr|#if !defined(QT_NO_SCTP)

$prototype=virtual ~QSctpServer()
$deleteMethod=|#if !defined(QT_NO_SCTP)

$prototype=void setMaximumChannelCount(int count)
$method=|void|setMaximumChannelCount|int|#if !defined(QT_NO_SCTP)

$prototype=int maximumChannelCount() const
$method=|int|maximumChannelCount||#if !defined(QT_NO_SCTP)

$prototype=QSctpSocket *nextPendingDatagramConnection()
$method=|QSctpSocket *|nextPendingDatagramConnection||#if !defined(QT_NO_SCTP)

$prototype=void incomingConnection(qintptr handle) Q_DECL_OVERRIDE [protected]

#pragma ENDDUMP
