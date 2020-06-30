%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QRegularExpressionMatchIterator(const QRegularExpressionMatchIterator & iterator)
$constructor=|new|const QRegularExpressionMatchIterator &

$deleteMethod

$prototypeV2=bool hasNext() const

$prototypeV2=bool isValid() const

$prototypeV2=QRegularExpression::MatchOptions matchOptions() const

$prototypeV2=QRegularExpression::MatchType matchType() const

$prototypeV2=QRegularExpressionMatch next()

$prototypeV2=QRegularExpressionMatch peekNext() const

$prototypeV2=QRegularExpression regularExpression() const

$prototypeV2=void swap( QRegularExpressionMatchIterator & other )

$extraMethods

#pragma ENDDUMP
