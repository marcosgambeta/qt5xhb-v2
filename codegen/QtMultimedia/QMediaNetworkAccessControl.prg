%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaNetworkAccessControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QMediaNetworkAccessControl()
$deleteMethod

$prototypeV2=virtual QNetworkConfiguration currentConfiguration() const = 0

$prototypeV2=virtual void setConfigurations( const QList<QNetworkConfiguration> & configurations ) = 0

%%
%% SIGNALS
%%

$prototype=void configurationChanged( const QNetworkConfiguration & configuration )
$signalMethod=|void|configurationChanged|const QNetworkConfiguration &

#pragma ENDDUMP
