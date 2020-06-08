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

$prototype=virtual QUuid classID ( const QString & key ) const
$virtualMethod=|QUuid|classID|const QString &

$prototype=virtual QObject * createObject ( const QString & key ) = 0
$virtualMethod=|QObject *|createObject|const QString &

$prototype=virtual QUuid eventsID ( const QString & key ) const
$virtualMethod=|QUuid|eventsID|const QString &

$prototype=virtual QString exposeToSuperClass ( const QString & key ) const
$virtualMethod=|QString|exposeToSuperClass|const QString &

$prototypeV2=virtual QStringList featureList() const = 0

$prototype=virtual bool hasStockEvents ( const QString & key ) const
$virtualMethod=|bool|hasStockEvents|const QString &

$prototype=virtual QUuid interfaceID ( const QString & key ) const
$virtualMethod=|QUuid|interfaceID|const QString &

$prototypeV2=virtual bool isService() const

$prototype=virtual const QMetaObject * metaObject ( const QString & key ) const = 0
$virtualMethod=|const QMetaObject *|metaObject|const QString &

$prototype=virtual void registerClass ( const QString & key, QSettings * settings ) const
$virtualMethod=|void|registerClass|const QString &,QSettings *

$prototype=virtual bool stayTopLevel ( const QString & key ) const
$virtualMethod=|bool|stayTopLevel|const QString &

$prototypeV2=virtual QUuid typeLibID() const

$prototype=virtual void unregisterClass ( const QString & key, QSettings * settings ) const
$virtualMethod=|void|unregisterClass|const QString &,QSettings *

$prototype=virtual bool validateLicenseKey ( const QString & key, const QString & licenseKey ) const
$virtualMethod=|bool|validateLicenseKey|const QString &,const QString &

$prototypeV2=static bool isServer()

$prototype=static bool registerActiveObject ( QObject * object )
$staticMethod=|bool|registerActiveObject|QObject *

$prototypeV2=static QString serverDirPath()

$prototypeV2=static QString serverFilePath()

$prototype=static bool startServer ( ServerType type = MultipleInstances )
$staticMethod=|bool|startServer|QAxFactory::ServerType=QAxFactory::MultipleInstances

$prototypeV2=static bool stopServer()

#pragma ENDDUMP
