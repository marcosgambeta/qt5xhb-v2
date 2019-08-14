%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineWidgets
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWebEngineCertificateError(int error, QUrl url, bool overridable, QString errorDescription)
$constructor=|new|int,QUrl,bool,QString

$deleteMethod

$prototype=Error error() const
$method=|QWebEngineCertificateError::Error|error|

$prototype=QUrl url() const
$method=|QUrl|url|

$prototype=bool isOverridable() const
$method=|bool|isOverridable|

$prototype=QString errorDescription() const
$method=|QString|errorDescription|

$extraMethods

#pragma ENDDUMP
