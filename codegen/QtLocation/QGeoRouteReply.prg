%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation
$added=5,4,0

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

$prototype=QGeoRouteReply(Error error, const QString &errorString, QObject *parent = nullptr)
$constructor=|new|QGeoRouteReply::Error,const QString &,QObject *=nullptr

$deleteMethod

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=Error error() const
$method=|QGeoRouteReply::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=QGeoRouteRequest request() const
$method=|QGeoRouteRequest|request|

$prototype=QList<QGeoRoute> routes() const
$method=|QList<QGeoRoute>|routes|

$prototype=virtual void abort()
$virtualMethod=|void|abort|

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void error( QGeoRouteReply::Error error, const QString & errorString = QString() )
$signalMethod=|void|error,error,QOverload<QGeoRouteReply::Error COMMA const QString &>|QGeoRouteReply::Error,const QString &

#pragma ENDDUMP
