%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

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

#include <QtNetwork/QLocalSocket>

$prototype=explicit QLocalServer(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QLocalServer()
$deleteMethod

%%
%% Q_PROPERTY(SocketOptions socketOptions READ socketOptions WRITE setSocketOptions)
%%

$prototypeV2=QLocalServer::SocketOptions socketOptions() const

$prototype=void setSocketOptions(SocketOptions options)
$method=|void|setSocketOptions|QLocalServer::SocketOptions

%%
%%
%%

$prototypeV2=void close()

$prototypeV2=QString errorString() const

$prototypeV2=virtual bool hasPendingConnections() const

$prototypeV2=bool isListening() const

$prototype=bool listen(const QString &name)
$internalMethod=|bool|listen,listen1|const QString &

$prototype=bool listen(qintptr socketDescriptor)
$internalMethod=|bool|listen,listen2|qintptr

/*
[1]bool listen(const QString &name)
[2]bool listen(qintptr socketDescriptor)
*/

HB_FUNC_STATIC( QLOCALSERVER_LISTEN )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QLocalServer_listen1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QLocalServer_listen2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=listen

$prototypeV2=int maxPendingConnections() const

$prototypeV2=virtual QLocalSocket * nextPendingConnection()

$prototypeV2=QString serverName() const

$prototypeV2=QString fullServerName() const

$prototype=static bool removeServer(const QString &name)
$staticMethod=|bool|removeServer|const QString &

$prototypeV2=QAbstractSocket::SocketError serverError() const

$prototype=void setMaxPendingConnections(int numConnections)
$method=|void|setMaxPendingConnections|int

$prototype=bool waitForNewConnection(int msec = 0, bool *timedOut = nullptr)
$method=|bool|waitForNewConnection|int=0,bool *=nullptr

$prototype=qintptr socketDescriptor() const
$method=5,10,0|qintptr|socketDescriptor|

$prototype=virtual void incomingConnection(quintptr socketDescriptor) [protected]

%%
%% SIGNALS
%%

$prototype=void newConnection()
$signalMethod=|void|newConnection|

#pragma ENDDUMP
