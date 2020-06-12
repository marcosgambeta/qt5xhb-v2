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

$beginClassFrom=QAbstractNetworkCache

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QIODevice>

$prototype=explicit QNetworkDiskCache(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QNetworkDiskCache()
$deleteMethod

$prototypeV2=QString cacheDirectory() const

$prototype=void setCacheDirectory(const QString &cacheDir)
$method=|void|setCacheDirectory|const QString &

$prototypeV2=qint64 maximumCacheSize() const

$prototype=void setMaximumCacheSize(qint64 size)
$method=|void|setMaximumCacheSize|qint64

$prototypeV2=qint64 cacheSize() const Q_DECL_OVERRIDE

$prototype=QNetworkCacheMetaData metaData(const QUrl &url) Q_DECL_OVERRIDE
$method=|QNetworkCacheMetaData|metaData|const QUrl &

$prototype=void updateMetaData(const QNetworkCacheMetaData &metaData) Q_DECL_OVERRIDE
$method=|void|updateMetaData|const QNetworkCacheMetaData &

$prototype=QIODevice *data(const QUrl &url) Q_DECL_OVERRIDE
$method=|QIODevice *|data|const QUrl &

$prototype=bool remove(const QUrl &url) Q_DECL_OVERRIDE
$method=|bool|remove|const QUrl &

$prototype=QIODevice *prepare(const QNetworkCacheMetaData &metaData) Q_DECL_OVERRIDE
$method=|QIODevice *|prepare|const QNetworkCacheMetaData &

$prototype=void insert(QIODevice *device) Q_DECL_OVERRIDE
$method=|void|insert|QIODevice *

$prototype=QNetworkCacheMetaData fileMetaData(const QString &fileName) const
$method=|QNetworkCacheMetaData|fileMetaData|const QString &

$prototypeV2=void clear() Q_DECL_OVERRIDE (slot)

$prototype=virtual qint64 expire() [protected]

#pragma ENDDUMP
