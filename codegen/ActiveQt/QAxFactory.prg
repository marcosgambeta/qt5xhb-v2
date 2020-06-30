%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=ActiveQt

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual QUuid appID() const

$prototypeV2=virtual QUuid classID( const QString & key ) const

$prototypeV2=virtual QObject * createObject( const QString & key ) = 0

$prototypeV2=virtual QUuid eventsID( const QString & key ) const

$prototypeV2=virtual QString exposeToSuperClass( const QString & key ) const

$prototypeV2=virtual QStringList featureList() const = 0

$prototypeV2=virtual bool hasStockEvents( const QString & key ) const

$prototypeV2=virtual QUuid interfaceID( const QString & key ) const

$prototypeV2=virtual bool isService() const

$prototypeV2=virtual const QMetaObject * metaObject( const QString & key ) const = 0

$prototypeV2=virtual void registerClass( const QString & key, QSettings * settings ) const

$prototypeV2=virtual bool stayTopLevel( const QString & key ) const

$prototypeV2=virtual QUuid typeLibID() const

$prototypeV2=virtual void unregisterClass( const QString & key, QSettings * settings ) const

$prototypeV2=virtual bool validateLicenseKey( const QString & key, const QString & licenseKey ) const

$prototypeV2=static bool isServer()

$prototypeV2=static bool registerActiveObject( QObject * object )

$prototypeV2=static QString serverDirPath()

$prototypeV2=static QString serverFilePath()

$prototypeV2=static bool startServer( QAxFactory::ServerType type = QAxFactory::MultipleInstances )

$prototypeV2=static bool stopServer()

#pragma ENDDUMP
