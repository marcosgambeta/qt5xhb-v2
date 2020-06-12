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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWebEngineUrlRequestInfo(QWebEngineUrlRequestInfoPrivate *p) [private]

$prototype=~QWebEngineUrlRequestInfo() [private]
%% $deleteMethod

$prototypeV2=QWebEngineUrlRequestInfo::ResourceType resourceType() const

$prototypeV2=QWebEngineUrlRequestInfo::NavigationType navigationType() const

$prototypeV2=QUrl requestUrl() const

$prototypeV2=QUrl firstPartyUrl() const

$prototypeV2=QByteArray requestMethod() const

$prototypeV2=bool changed() const

$prototype=void block(bool shouldBlock)
$method=|void|block|bool

$prototype=void redirect(const QUrl &url)
$method=|void|redirect|const QUrl &

$prototype=void setHttpHeader(const QByteArray &name, const QByteArray &value)
$method=|void|setHttpHeader|const QByteArray &,const QByteArray &

#pragma ENDDUMP
