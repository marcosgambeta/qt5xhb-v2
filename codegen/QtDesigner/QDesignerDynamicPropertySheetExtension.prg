%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

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

$prototypeV2=virtual int addDynamicProperty( const QString & propertyName, const QVariant & value ) = 0

$prototypeV2=virtual bool canAddDynamicProperty( const QString & propertyName ) const = 0

$prototypeV2=virtual bool dynamicPropertiesAllowed() const = 0

$prototypeV2=virtual bool isDynamicProperty( int index ) const = 0

$prototypeV2=virtual bool removeDynamicProperty( int index ) = 0

$extraMethods

#pragma ENDDUMP
