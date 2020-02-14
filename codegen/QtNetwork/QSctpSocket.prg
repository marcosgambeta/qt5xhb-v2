%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork
$added=5,8,0

$header

%% TODO:
%% #if !defined(QT_NO_SCTP) || defined(Q_CLANG_QDOC)
%% #endif // QT_NO_SCTP

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTcpSocket

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSctpSocket(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr|#if !defined(QT_NO_SCTP)

$prototype=virtual ~QSctpSocket()
$deleteMethod=|#if !defined(QT_NO_SCTP)

$prototype=void close() Q_DECL_OVERRIDE
$method=|void|close||#if !defined(QT_NO_SCTP)

$prototype=void disconnectFromHost() Q_DECL_OVERRIDE
$method=|void|disconnectFromHost||#if !defined(QT_NO_SCTP)

$prototype=void setMaximumChannelCount(int count)
$method=|void|setMaximumChannelCount|int|#if !defined(QT_NO_SCTP)

$prototype=int maximumChannelCount() const
$method=|int|maximumChannelCount||#if !defined(QT_NO_SCTP)

$prototype=bool isInDatagramMode() const
$method=|bool|isInDatagramMode||#if !defined(QT_NO_SCTP)

$prototype=QNetworkDatagram readDatagram()
$method=|QNetworkDatagram|readDatagram||#if !defined(QT_NO_SCTP)

$prototype=bool writeDatagram(const QNetworkDatagram &datagram)
$method=|bool|writeDatagram|const QNetworkDatagram &|#if !defined(QT_NO_SCTP)

$prototype=qint64 readData(char *data, qint64 maxlen) Q_DECL_OVERRIDE [protected]

$prototype=qint64 readLineData(char *data, qint64 maxlen) Q_DECL_OVERRIDE [protected]

#pragma ENDDUMP
