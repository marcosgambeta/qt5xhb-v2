%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QJSEngine

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtNetwork/QNetworkAccessManager>
#include <QtQml/QQmlContext>

$prototype=QQmlEngine(QObject * parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=void addImageProvider(const QString & providerId, QQmlImageProviderBase * provider)
$method=|void|addImageProvider|const QString &,QQmlImageProviderBase *

$prototype=void addImportPath(const QString & path)
$method=|void|addImportPath|const QString &

$prototype=bool addNamedBundle(const QString & name, const QString & fileName)
$method=|bool|addNamedBundle|const QString &,const QString &

$prototype=void addPluginPath(const QString & path)
$method=|void|addPluginPath|const QString &

$prototypeV2=QUrl baseUrl() const

$prototypeV2=void clearComponentCache()

$prototype=QQmlImageProviderBase * imageProvider(const QString & providerId) const
$method=|QQmlImageProviderBase *|imageProvider|const QString &

$prototypeV2=QStringList importPathList() const

$prototype=bool importPlugin(const QString & filePath, const QString & uri, QList<QQmlError> * errors)
%% TODO: implementar
%% $method=|bool|importPlugin|const QString &,const QString &,QList<QQmlError> *

$prototypeV2=QQmlIncubationController * incubationController() const

$prototypeV2=QNetworkAccessManager * networkAccessManager() const

$prototypeV2=QQmlNetworkAccessManagerFactory * networkAccessManagerFactory() const

$prototypeV2=QString offlineStoragePath() const

$prototypeV2=bool outputWarningsToStandardError() const

$prototypeV2=QStringList pluginPathList() const

$prototype=void removeImageProvider(const QString & providerId)
$method=|void|removeImageProvider|const QString &

$prototypeV2=QQmlContext * rootContext() const

$prototype=void setBaseUrl(const QUrl & url)
$method=|void|setBaseUrl|const QUrl &

$prototype=void setImportPathList(const QStringList & paths)
$method=|void|setImportPathList|const QStringList &

$prototype=void setIncubationController(QQmlIncubationController * controller)
$method=|void|setIncubationController|QQmlIncubationController *

$prototype=void setNetworkAccessManagerFactory(QQmlNetworkAccessManagerFactory * factory)
$method=|void|setNetworkAccessManagerFactory|QQmlNetworkAccessManagerFactory *

$prototype=void setOfflineStoragePath(const QString & dir)
$method=|void|setOfflineStoragePath|const QString &

$prototype=void setOutputWarningsToStandardError(bool enabled)
$method=|void|setOutputWarningsToStandardError|bool

$prototype=void setPluginPathList(const QStringList & paths)
$method=|void|setPluginPathList|const QStringList &

$prototypeV2=void trimComponentCache()

$prototype=static QQmlContext * contextForObject(const QObject * object)
$staticMethod=|QQmlContext *|contextForObject|const QObject *

$prototype=static ObjectOwnership objectOwnership(QObject * object)
$staticMethod=|QQmlEngine::ObjectOwnership|objectOwnership|QObject *

$prototype=static void setContextForObject(QObject * object, QQmlContext * context)
$staticMethod=|void|setContextForObject|QObject *,QQmlContext *

$prototype=static void setObjectOwnership(QObject * object, ObjectOwnership ownership)
$staticMethod=|void|setObjectOwnership|QObject *,QQmlEngine::ObjectOwnership

%%
%% SIGNALS
%%

$prototype=void quit()
$signalMethod=|void|quit|

#pragma ENDDUMP
