%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool error ( const QXmlParseException & exception ) = 0
$virtualMethod=|bool|error|const QXmlParseException &

$prototypeV2=virtual QString errorString() const = 0

$prototype=virtual bool fatalError ( const QXmlParseException & exception ) = 0
$virtualMethod=|bool|fatalError|const QXmlParseException &

$prototype=virtual bool warning ( const QXmlParseException & exception ) = 0
$virtualMethod=|bool|warning|const QXmlParseException &

$extraMethods

#pragma ENDDUMP
