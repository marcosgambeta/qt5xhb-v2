%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=ActiveQt

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAxBindable ()
$constructor=|new|

$deleteMethod

$prototypeV2=virtual QAxAggregated * createAggregate()

$prototypeV2=virtual bool readData( QIODevice * source, const QString & format )

$prototypeV2=void reportError( int code, const QString & src, const QString & desc, const QString & context = QString() )

$prototypeV2=virtual bool writeData( QIODevice * sink )

$extraMethods

#pragma ENDDUMP
