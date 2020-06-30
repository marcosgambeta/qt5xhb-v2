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

$beginClassFrom=QAccessibleEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleValueChangeEvent(QObject *obj, const QVariant &val)
$constructor=|new|QObject *,const QVariant &

$deleteMethod

$prototypeV2=void setValue( const QVariant & val)

$prototypeV2=QVariant value() const

#pragma ENDDUMP
