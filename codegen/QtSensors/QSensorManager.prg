%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtSensors/QSensorBackend>

$deleteMethod

$prototype=static void registerBackend(const QByteArray &type, const QByteArray &identifier, QSensorBackendFactory *factory)
$staticMethod=|void|registerBackend|const QByteArray &,const QByteArray &,QSensorBackendFactory *

$prototype=static void unregisterBackend(const QByteArray &type, const QByteArray &identifier)
$staticMethod=|void|unregisterBackend|const QByteArray &,const QByteArray &

$prototype=static bool isBackendRegistered(const QByteArray &type, const QByteArray &identifier)
$staticMethod=|bool|isBackendRegistered|const QByteArray &,const QByteArray &

$prototype=static QSensorBackend *createBackend(QSensor *sensor)
$staticMethod=|QSensorBackend *|createBackend|QSensor *

$prototype=static void setDefaultBackend(const QByteArray &type, const QByteArray &identifier)
$staticMethod=|void|setDefaultBackend|const QByteArray &,const QByteArray &

$extraMethods

#pragma ENDDUMP
