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

$beginClassFrom=QTextFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextListFormat()
$constructor=|new|

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=void setStyle( QTextListFormat::Style style )

$prototypeV2=QTextListFormat::Style style() const

$prototypeV2=void setIndent( int indent )

$prototypeV2=int indent() const

$prototypeV2=void setNumberPrefix( const QString & numberPrefix )

$prototypeV2=QString numberPrefix() const

$prototypeV2=void setNumberSuffix( const QString & numberSuffix )

$prototypeV2=QString numberSuffix() const

#pragma ENDDUMP
