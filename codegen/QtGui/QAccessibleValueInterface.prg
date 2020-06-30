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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual QVariant currentValue() const = 0

$prototypeV2=virtual void setCurrentValue( const QVariant & value ) = 0

$prototypeV2=virtual QVariant maximumValue() const = 0

$prototypeV2=virtual QVariant minimumValue() const = 0

$prototypeV2=virtual QVariant minimumStepSize() const = 0

$extraMethods

#pragma ENDDUMP
