%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineCore

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

$prototype=explicit QWebEngineCookieStore(QObject *parent = nullptr) [private]

$prototype=virtual ~QWebEngineCookieStore()
$deleteMethod

$prototype=void setCookie(const QNetworkCookie &cookie, const QUrl &origin = QUrl())
$method=|void|setCookie|const QNetworkCookie &,const QUrl &=QUrl()

$prototype=void deleteCookie(const QNetworkCookie &cookie, const QUrl &origin = QUrl())
$method=|void|deleteCookie|const QNetworkCookie &,const QUrl &=QUrl()

$prototype=void deleteSessionCookies()
$method=|void|deleteSessionCookies|

$prototype=void deleteAllCookies()
$method=|void|deleteAllCookies|

$prototype=void loadAllCookies()
$method=|void|loadAllCookies|

%%
%% SIGNALS
%%

$prototype=void cookieAdded(const QNetworkCookie &cookie)
$signalMethod=|void|cookieAdded|const QNetworkCookie &

$prototype=void cookieRemoved(const QNetworkCookie &cookie)
$signalMethod=|void|cookieRemoved|const QNetworkCookie &

#pragma ENDDUMP
