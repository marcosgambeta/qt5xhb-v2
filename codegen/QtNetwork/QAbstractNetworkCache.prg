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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QIODevice>

$prototype=explicit QAbstractNetworkCache(QObject *parent = nullptr) [protected]

$prototype=QAbstractNetworkCache(QAbstractNetworkCachePrivate &dd, QObject *parent) [protected]

$prototype=virtual ~QAbstractNetworkCache()
$deleteMethod

$prototypeV2=virtual qint64 cacheSize() const = 0

$prototype=virtual QIODevice * data ( const QUrl & url ) = 0
$virtualMethod=|QIODevice *|data|const QUrl &

$prototype=virtual void insert ( QIODevice * device ) = 0
$virtualMethod=|void|insert|QIODevice *

$prototype=virtual QNetworkCacheMetaData metaData ( const QUrl & url ) = 0
$virtualMethod=|QNetworkCacheMetaData|metaData|const QUrl &

$prototype=virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData ) = 0
$virtualMethod=|QIODevice *|prepare|const QNetworkCacheMetaData &

$prototype=virtual bool remove ( const QUrl & url ) = 0
$virtualMethod=|bool|remove|const QUrl &

$prototype=virtual void updateMetaData ( const QNetworkCacheMetaData & metaData ) = 0
$virtualMethod=|void|updateMetaData|const QNetworkCacheMetaData &

$prototypeV2=virtual void clear() = 0 (slot)

#pragma ENDDUMP
