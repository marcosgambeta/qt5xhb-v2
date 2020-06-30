%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=static QString writableLocation( QStandardPaths::StandardLocation type )

$prototypeV2=static QStringList standardLocations( QStandardPaths::StandardLocation type )

$prototypeV2=static QString locate( QStandardPaths::StandardLocation type, const QString & fileName, QStandardPaths::LocateOptions options = QStandardPaths::LocateFile )

$prototypeV2=static QStringList locateAll( QStandardPaths::StandardLocation type, const QString & fileName, QStandardPaths::LocateOptions options = QStandardPaths::LocateFile )

$prototypeV2=static QString displayName( QStandardPaths::StandardLocation type )

$prototypeV2=static QString findExecutable( const QString & executableName, const QStringList & paths = QStringList() )

$prototypeV2=static void setTestModeEnabled( bool testMode )

$prototypeV2=static bool isTestModeEnabled()

$extraMethods

#pragma ENDDUMP
