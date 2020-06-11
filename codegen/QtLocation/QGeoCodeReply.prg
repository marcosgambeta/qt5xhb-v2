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

$prototypeV2=bool isFinished() const

$prototypeV2=QGeoCodeReply::Error error() const

$prototypeV2=QString errorString() const

$prototypeV2=QGeoShape viewport() const

$prototype=QList<QGeoLocation> locations() const
$method=|QList<QGeoLocation>|locations|

$prototypeV2=int limit() const

$prototypeV2=int offset() const

$prototypeV2=virtual void abort()

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void error( QGeoCodeReply::Error error, const QString & errorString = QString() )
$signalMethod=|void|error,error,QOverload<QGeoCodeReply::Error COMMA const QString &>|QGeoCodeReply::Error,const QString &

#pragma ENDDUMP
