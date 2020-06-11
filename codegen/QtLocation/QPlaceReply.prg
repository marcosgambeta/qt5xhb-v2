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

$prototype=explicit QPlaceReply(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=bool isFinished() const

$prototypeV2=virtual QPlaceReply::Type type() const

$prototypeV2=QString errorString() const

$prototypeV2=QPlaceReply::Error error() const

$prototypeV2=virtual void abort()

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void error( QPlaceReply::Error error, const QString & errorString = QString() )
$signalMethod=|void|error,error,QOverload<QPlaceReply::Error COMMA const QString &>|QPlaceReply::Error,const QString &

#pragma ENDDUMP
