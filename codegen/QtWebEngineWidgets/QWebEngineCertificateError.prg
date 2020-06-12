%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototypeV2=QWebEngineCertificateError::Error error() const

$prototypeV2=QUrl url() const

$prototypeV2=bool isOverridable() const

$prototypeV2=QString errorDescription() const

$extraMethods

#pragma ENDDUMP
