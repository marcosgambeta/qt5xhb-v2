%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QNetworkConfigurationManager(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=virtual ~QNetworkConfigurationManager()
$deleteMethod

$prototype=QList<QNetworkConfiguration> allConfigurations ( QNetworkConfiguration::StateFlags filter = QNetworkConfiguration::StateFlags() ) const
$method=|QList<QNetworkConfiguration>|allConfigurations|QNetworkConfiguration::StateFlags=QNetworkConfiguration::StateFlags()

$prototype=QNetworkConfigurationManager::Capabilities capabilities () const
$method=|QNetworkConfigurationManager::Capabilities|capabilities|

$prototype=QNetworkConfiguration configurationFromIdentifier ( const QString & identifier ) const
$method=|QNetworkConfiguration|configurationFromIdentifier|const QString &

$prototype=QNetworkConfiguration defaultConfiguration () const
$method=|QNetworkConfiguration|defaultConfiguration|

$prototype=bool isOnline () const
$method=|bool|isOnline|

$prototype=void updateConfigurations () (slot)
$method=|void|updateConfigurations|

%%
%% SIGNALS
%%

$prototype=void configurationAdded( const QNetworkConfiguration & config )
$signalMethod=|void|configurationAdded|const QNetworkConfiguration &

$prototype=void configurationChanged( const QNetworkConfiguration & config )
$signalMethod=|void|configurationChanged|const QNetworkConfiguration &

$prototype=void configurationRemoved( const QNetworkConfiguration & config )
$signalMethod=|void|configurationRemoved|const QNetworkConfiguration &

$prototype=void onlineStateChanged( bool isOnline )
$signalMethod=|void|onlineStateChanged|bool

$prototype=void updateCompleted()
$signalMethod=|void|updateCompleted|

#pragma ENDDUMP
