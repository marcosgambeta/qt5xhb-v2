%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngine
$added=5,6,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtWebEngine/QWebEngineCookieStore>
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtWebEngine/QWebEngineUrlSchemeHandler>
#endif

$prototype=QQuickWebEngineProfile(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QQuickWebEngineProfile(QQuickWebEngineProfilePrivate *, QObject *parent = nullptr) [private]

$prototype=~QQuickWebEngineProfile()
$deleteMethod

%%
%% Q_PROPERTY(QString storageName READ storageName WRITE setStorageName NOTIFY storageNameChanged FINAL)
%%

$prototype=QString storageName() const
$method=|QString|storageName|

$prototype=void setStorageName(const QString &name)
$method=|void|setStorageName|const QString &

%%
%% Q_PROPERTY(bool offTheRecord READ isOffTheRecord WRITE setOffTheRecord NOTIFY offTheRecordChanged FINAL)
%%

$prototype=bool isOffTheRecord() const
$method=|bool|isOffTheRecord|

$prototype=void setOffTheRecord(bool offTheRecord)
$method=|void|setOffTheRecord|bool

%%
%% Q_PROPERTY(QString persistentStoragePath READ persistentStoragePath WRITE setPersistentStoragePath NOTIFY persistentStoragePathChanged FINAL)
%%

$prototype=QString persistentStoragePath() const
$method=|QString|persistentStoragePath|

$prototype=void setPersistentStoragePath(const QString &path)
$method=|void|setPersistentStoragePath|const QString &

%%
%% Q_PROPERTY(QString cachePath READ cachePath WRITE setCachePath NOTIFY cachePathChanged FINAL)
%%

$prototype=QString cachePath() const
$method=|QString|cachePath|

$prototype=void setCachePath(const QString &path)
$method=|void|setCachePath|const QString &

%%
%% Q_PROPERTY(QString httpUserAgent READ httpUserAgent WRITE setHttpUserAgent NOTIFY httpUserAgentChanged FINAL)
%%

$prototype=QString httpUserAgent() const
$method=|QString|httpUserAgent|

$prototype=void setHttpUserAgent(const QString &userAgent)
$method=|void|setHttpUserAgent|const QString &

%%
%% Q_PROPERTY(HttpCacheType httpCacheType READ httpCacheType WRITE setHttpCacheType NOTIFY httpCacheTypeChanged FINAL)
%%

$prototype=HttpCacheType httpCacheType() const
$method=|QQuickWebEngineProfile::HttpCacheType|httpCacheType|

$prototype=void setHttpCacheType(QQuickWebEngineProfile::HttpCacheType)
$method=|void|setHttpCacheType|QQuickWebEngineProfile::HttpCacheType

%%
%% Q_PROPERTY(QString httpAcceptLanguage READ httpAcceptLanguage WRITE setHttpAcceptLanguage NOTIFY httpAcceptLanguageChanged FINAL REVISION 1)
%%

$prototype=QString httpAcceptLanguage() const
$method=|QString|httpAcceptLanguage|

$prototype=void setHttpAcceptLanguage(const QString &httpAcceptLanguage)
$method=|void|setHttpAcceptLanguage|const QString &

%%
%% Q_PROPERTY(PersistentCookiesPolicy persistentCookiesPolicy READ persistentCookiesPolicy WRITE setPersistentCookiesPolicy NOTIFY persistentCookiesPolicyChanged FINAL)
%%

$prototype=PersistentCookiesPolicy persistentCookiesPolicy() const
$method=|QQuickWebEngineProfile::PersistentCookiesPolicy|persistentCookiesPolicy|

$prototype=void setPersistentCookiesPolicy(QQuickWebEngineProfile::PersistentCookiesPolicy)
$method=|void|setPersistentCookiesPolicy|QQuickWebEngineProfile::PersistentCookiesPolicy

%%
%% Q_PROPERTY(int httpCacheMaximumSize READ httpCacheMaximumSize WRITE setHttpCacheMaximumSize NOTIFY httpCacheMaximumSizeChanged FINAL)
%%

$prototype=int httpCacheMaximumSize() const
$method=|int|httpCacheMaximumSize|

$prototype=void setHttpCacheMaximumSize(int maxSize)
$method=|void|setHttpCacheMaximumSize|int

%%
%% Q_PROPERTY(QStringList spellCheckLanguages READ spellCheckLanguages WRITE setSpellCheckLanguages NOTIFY spellCheckLanguagesChanged FINAL REVISION 3)
%%

$prototype=QStringList spellCheckLanguages() const
$method=5,8,0|QStringList|spellCheckLanguages|

$prototype=void setSpellCheckLanguages(const QStringList &languages)
%% TODO: verificar se entrou na versao 5,8,0
$method=5,8,0|void|setSpellCheckLanguages|const QStringList &

%%
%% Q_PROPERTY(bool spellCheckEnabled READ isSpellCheckEnabled WRITE setSpellCheckEnabled NOTIFY spellCheckEnabledChanged FINAL REVISION 3)
%%

%% TODO: confirmar versao do Qt

$prototype=bool isSpellCheckEnabled() const
$method=5,8,0|bool|isSpellCheckEnabled|

$prototype=void setSpellCheckEnabled(bool enabled)
$method=5,8,0|void|setSpellCheckEnabled|bool

%%
%% Q_PROPERTY(QQmlListProperty<QQuickWebEngineScript> userScripts READ userScripts FINAL REVISION 4)
%%

$prototype=QQmlListProperty<QQuickWebEngineScript> userScripts()
%% TODO: implementar
%% $method=5,9,0|QQmlListProperty<QQuickWebEngineScript>|userScripts|

%%
%%
%%

$prototype=QWebEngineCookieStore *cookieStore() const
$method=|QWebEngineCookieStore *|cookieStore|

$prototype=void setRequestInterceptor(QWebEngineUrlRequestInterceptor *interceptor)
$method=|void|setRequestInterceptor|QWebEngineUrlRequestInterceptor *

$prototype=const QWebEngineUrlSchemeHandler *urlSchemeHandler(const QByteArray &) const
$method=|const QWebEngineUrlSchemeHandler *|urlSchemeHandler|const QByteArray &

$prototype=void installUrlSchemeHandler(const QByteArray &scheme, QWebEngineUrlSchemeHandler *)
$method=|void|installUrlSchemeHandler|const QByteArray &,QWebEngineUrlSchemeHandler *

$prototype=void removeUrlScheme(const QByteArray &scheme)
$method=|void|removeUrlScheme|const QByteArray &

$prototype=void removeUrlSchemeHandler(QWebEngineUrlSchemeHandler *)
$method=|void|removeUrlSchemeHandler|QWebEngineUrlSchemeHandler *

$prototype=void removeAllUrlSchemeHandlers()
$method=|void|removeAllUrlSchemeHandlers|

$prototype=Q_REVISION(2) Q_INVOKABLE void clearHttpCache()
$method=5,7,0|void|clearHttpCache|

$prototype=static QQuickWebEngineProfile *defaultProfile()
$staticMethod=|QQuickWebEngineProfile *|defaultProfile|

$prototype=void destroyedUrlSchemeHandler(QWebEngineUrlSchemeHandler *obj) (slot) [private]

$prototype=QQuickWebEngineSettings *settings() const [private]

%%
%% SIGNALS
%%

$prototype=void cachePathChanged()
$signalMethod=|void|cachePathChanged|

$prototype=void downloadFinished( QQuickWebEngineDownloadItem * download )
%% TODO: $signalMethod=|void|downloadFinished|QQuickWebEngineDownloadItem *

$prototype=void downloadRequested( QQuickWebEngineDownloadItem * download )
%% TODO: $signalMethod=|void|downloadRequested|QQuickWebEngineDownloadItem *

$prototype=void httpAcceptLanguageChanged()
$signalMethod=|void|httpAcceptLanguageChanged|

$prototype=void httpCacheMaximumSizeChanged()
$signalMethod=|void|httpCacheMaximumSizeChanged|

$prototype=void httpCacheTypeChanged()
$signalMethod=|void|httpCacheTypeChanged|

$prototype=void httpUserAgentChanged()
$signalMethod=|void|httpUserAgentChanged|

$prototype=void offTheRecordChanged()
$signalMethod=|void|offTheRecordChanged|

$prototype=void persistentCookiesPolicyChanged()
$signalMethod=|void|persistentCookiesPolicyChanged|

$prototype=void persistentStoragePathChanged()
$signalMethod=|void|persistentStoragePathChanged|

$prototype=void spellCheckEnabledChanged()
$signalMethod=|void|spellCheckEnabledChanged|

$prototype=void spellCheckLanguagesChanged()
$signalMethod=|void|spellCheckLanguagesChanged|

$prototype=void storageNameChanged()
$signalMethod=|void|storageNameChanged|

#pragma ENDDUMP
