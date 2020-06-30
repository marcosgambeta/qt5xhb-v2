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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QInputMethodQueryEvent(Qt::InputMethodQueries queries)
$constructor=|new|Qt::InputMethodQueries

$deleteMethod

$prototypeV2=Qt::InputMethodQueries queries() const

$prototypeV2=void setValue( Qt::InputMethodQuery query, const QVariant & value )

$prototypeV2=QVariant value( Qt::InputMethodQuery query ) const

#pragma ENDDUMP
