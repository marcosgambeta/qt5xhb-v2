%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

#include <QtPositioning/QGeoShape>

$prototype=QGeoCodeReply(Error error, const QString &errorString, QObject *parent = nullptr)
$constructor=|new|QGeoCodeReply::Error,const QString &,QObject *=nullptr

$deleteMethod

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=Error error() const
$method=|QGeoCodeReply::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=QGeoShape viewport() const
$method=|QGeoShape|viewport|

$prototype=QList<QGeoLocation> locations() const
$method=|QList<QGeoLocation>|locations|

$prototype=int limit() const
$method=|int|limit|

$prototype=int offset() const
$method=|int|offset|

$prototype=virtual void abort()
$virtualMethod=|void|abort|

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void error( QGeoCodeReply::Error error, const QString & errorString = QString() )
$signalMethod=|void|error,error,QOverload<QGeoCodeReply::Error COMMA const QString &>|QGeoCodeReply::Error,const QString &

#pragma ENDDUMP
