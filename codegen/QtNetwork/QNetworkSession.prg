%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

%% TODO:
%% #ifndef QT_NO_BEARERMANAGEMENT
%% #endif // QT_NO_BEARERMANAGEMENT

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods
%% #ifndef QT_NO_NETWORKINTERFACE
%%   METHOD interface
%% #endif

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QNetworkSession(const QNetworkConfiguration &connConfig, QObject *parent = nullptr)
$constructor=|new|const QNetworkConfiguration &,QObject *=nullptr

$prototype=virtual ~QNetworkSession()
$deleteMethod

$prototypeV2=quint64 activeTime() const

$prototypeV2=quint64 bytesReceived() const

$prototypeV2=quint64 bytesWritten() const

$prototypeV2=QNetworkConfiguration configuration() const

$prototypeV2=QNetworkSession::SessionError error() const

$prototypeV2=QString errorString() const

%% #ifndef QT_NO_NETWORKINTERFACE
$prototypeV2=QNetworkInterface interface() const
%% #endif

$prototypeV2=bool isOpen() const

$prototype=QVariant sessionProperty ( const QString & key ) const
$method=|QVariant|sessionProperty|const QString &

$prototype=void setSessionProperty ( const QString & key, const QVariant & value )
$method=|void|setSessionProperty|const QString &,const QVariant &

$prototypeV2=QNetworkSession::State state() const

$prototype=bool waitForOpened ( int msecs = 30000 )
$method=|bool|waitForOpened|int=30000

$prototypeV2=void accept() (slot)

$prototypeV2=void close() (slot)

$prototypeV2=void ignore() (slot)

$prototypeV2=void migrate() (slot)

$prototypeV2=void open() (slot)

$prototypeV2=void reject() (slot)

$prototypeV2=void stop() (slot)

$prototypeV2=QNetworkSession::UsagePolicies usagePolicies() const

$prototype=virtual void connectNotify(const QMetaMethod &signal) Q_DECL_OVERRIDE [protected]

$prototype=virtual void disconnectNotify(const QMetaMethod &signal) Q_DECL_OVERRIDE [protected]

%%
%% SIGNALS
%%

$prototype=void closed()
$signalMethod=|void|closed|

$prototype=void error( QNetworkSession::SessionError error )
$signalMethod=|void|error,error,QOverload<QNetworkSession::SessionError>|QNetworkSession::SessionError

$prototype=void newConfigurationActivated()
$signalMethod=|void|newConfigurationActivated|

$prototype=void opened()
$signalMethod=|void|opened|

$prototype=void preferredConfigurationChanged( const QNetworkConfiguration & config, bool isSeamless )
$signalMethod=|void|preferredConfigurationChanged|const QNetworkConfiguration &,bool

$prototype=void stateChanged( QNetworkSession::State state )
$signalMethod=|void|stateChanged|QNetworkSession::State

$prototype=void usagePoliciesChanged( QNetworkSession::UsagePolicies usagePolicies )
$signalMethod=|void|usagePoliciesChanged|QNetworkSession::UsagePolicies

#pragma ENDDUMP
