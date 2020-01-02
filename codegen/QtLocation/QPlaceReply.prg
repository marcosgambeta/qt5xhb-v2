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

$prototype=explicit QPlaceReply(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=virtual Type type() const
$virtualMethod=|QPlaceReply::Type|type|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=QPlaceReply::Error error() const
$method=|QPlaceReply::Error|error|

$prototype=virtual void abort()
$virtualMethod=|void|abort|

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void error( QPlaceReply::Error error, const QString & errorString = QString() )
$signalMethod=|void|error,error,QOverload<QPlaceReply::Error COMMA const QString &>|QPlaceReply::Error,const QString &

#pragma ENDDUMP
