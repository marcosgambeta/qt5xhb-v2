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

$prototype=void setStyle(Style style)
$method=|void|setStyle|QTextListFormat::Style

$prototypeV2=QTextListFormat::Style style() const

$prototype=void setIndent(int indent)
$method=|void|setIndent|int

$prototypeV2=int indent() const

$prototype=void setNumberPrefix(const QString &numberPrefix)
$method=|void|setNumberPrefix|const QString &

$prototypeV2=QString numberPrefix() const

$prototype=void setNumberSuffix(const QString &numberSuffix)
$method=|void|setNumberSuffix|const QString &

$prototypeV2=QString numberSuffix() const

#pragma ENDDUMP
