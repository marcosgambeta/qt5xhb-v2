%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextDocument>

$prototypeV2=QTextFormat format() const

$prototypeV2=int formatIndex() const

$prototypeV2=QTextDocument * document() const

$prototypeV2=int objectIndex() const

$prototype=QTextDocumentPrivate *docHandle() const
%% TODO: implementar ?
%% $method=|QTextDocumentPrivate *|docHandle|

#pragma ENDDUMP
