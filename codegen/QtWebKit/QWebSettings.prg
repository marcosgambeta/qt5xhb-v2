%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$prototypeV2=QString defaultTextEncoding() const

$prototype=QString fontFamily ( FontFamily which ) const
$method=|QString|fontFamily|QWebSettings::FontFamily

$prototype=int fontSize ( FontSize type ) const
$method=|int|fontSize|QWebSettings::FontSize

$prototypeV2=QString localStoragePath() const

$prototype=void resetAttribute ( WebAttribute attribute )
$method=|void|resetAttribute|QWebSettings::WebAttribute

$prototype=void resetFontFamily ( FontFamily which )
$method=|void|resetFontFamily|QWebSettings::FontFamily

$prototype=void resetFontSize ( FontSize type )
$method=|void|resetFontSize|QWebSettings::FontSize

$prototype=void setAttribute ( WebAttribute attribute, bool on )
$method=|void|setAttribute|QWebSettings::WebAttribute,bool

$prototype=void setDefaultTextEncoding ( const QString & encoding )
$method=|void|setDefaultTextEncoding|const QString &

$prototype=void setFontFamily ( FontFamily which, const QString & family )
$method=|void|setFontFamily|QWebSettings::FontFamily,const QString &

$prototype=void setFontSize ( FontSize type, int size )
$method=|void|setFontSize|QWebSettings::FontSize,int

$prototype=void setLocalStoragePath ( const QString & path )
$method=|void|setLocalStoragePath|const QString &

$prototype=void setUserStyleSheetUrl ( const QUrl & location )
$method=|void|setUserStyleSheetUrl|const QUrl &

$prototype=bool testAttribute ( WebAttribute attribute ) const
$method=|bool|testAttribute|QWebSettings::WebAttribute

$prototypeV2=QUrl userStyleSheetUrl() const

$prototypeV2=static void clearIconDatabase()

$prototypeV2=static void clearMemoryCaches()

$prototype=static void enablePersistentStorage ( const QString & path = QString() )
$staticMethod=|void|enablePersistentStorage|const QString &=QString()

$prototypeV2=static QWebSettings * globalSettings()

$prototypeV2=static QString iconDatabasePath()

$prototype=static QIcon iconForUrl ( const QUrl & url )
$staticMethod=|QIcon|iconForUrl|const QUrl &

$prototypeV2=static int maximumPagesInCache()

$prototypeV2=static qint64 offlineStorageDefaultQuota()

$prototypeV2=static QString offlineStoragePath()

$prototypeV2=static QString offlineWebApplicationCachePath()

$prototypeV2=static qint64 offlineWebApplicationCacheQuota()

$prototype=static void setIconDatabasePath ( const QString & path )
$staticMethod=|void|setIconDatabasePath|const QString &

$prototype=static void setMaximumPagesInCache ( int pages )
$staticMethod=|void|setMaximumPagesInCache|int

$prototype=static void setObjectCacheCapacities ( int cacheMinDeadCapacity, int cacheMaxDead, int totalCapacity )
$staticMethod=|void|setObjectCacheCapacities|int,int,int

$prototype=static void setOfflineStorageDefaultQuota ( qint64 maximumSize )
$staticMethod=|void|setOfflineStorageDefaultQuota|qint64

$prototype=static void setOfflineStoragePath ( const QString & path )
$staticMethod=|void|setOfflineStoragePath|const QString &

$prototype=static void setOfflineWebApplicationCachePath ( const QString & path )
$staticMethod=|void|setOfflineWebApplicationCachePath|const QString &

$prototype=static void setOfflineWebApplicationCacheQuota ( qint64 maximumSize )
$staticMethod=|void|setOfflineWebApplicationCacheQuota|qint64

$prototype=static void setWebGraphic ( WebGraphic type, const QPixmap & graphic )
$staticMethod=|void|setWebGraphic|QWebSettings::WebGraphic,const QPixmap &

$prototype=static QPixmap webGraphic ( WebGraphic type )
$staticMethod=|QPixmap|webGraphic|QWebSettings::WebGraphic

$extraMethods

#pragma ENDDUMP
