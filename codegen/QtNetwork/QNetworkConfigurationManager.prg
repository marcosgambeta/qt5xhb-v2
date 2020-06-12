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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QNetworkConfigurationManager(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~QNetworkConfigurationManager()
$deleteMethod

$prototype=QList<QNetworkConfiguration> allConfigurations ( QNetworkConfiguration::StateFlags filter = QNetworkConfiguration::StateFlags() ) const
$method=|QList<QNetworkConfiguration>|allConfigurations|QNetworkConfiguration::StateFlags=QNetworkConfiguration::StateFlags()

$prototypeV2=QNetworkConfigurationManager::Capabilities capabilities() const

$prototype=QNetworkConfiguration configurationFromIdentifier ( const QString & identifier ) const
$method=|QNetworkConfiguration|configurationFromIdentifier|const QString &

$prototypeV2=QNetworkConfiguration defaultConfiguration() const

$prototypeV2=bool isOnline() const

$prototypeV2=void updateConfigurations() (slot)

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
