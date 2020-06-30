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

#include <QtCore/QVariant>

$deleteMethod

$prototypeV2=virtual int count() const = 0

$prototypeV2=virtual bool hasReset( int index ) const = 0

$prototypeV2=virtual int indexOf( const QString & name ) const = 0

$prototypeV2=virtual bool isAttribute( int index ) const = 0

$prototypeV2=virtual bool isChanged( int index ) const = 0

$prototypeV2=virtual bool isVisible( int index ) const = 0

$prototypeV2=virtual QVariant property( int index ) const = 0

$prototypeV2=virtual QString propertyGroup( int index ) const = 0

$prototypeV2=virtual QString propertyName( int index ) const = 0

$prototypeV2=virtual bool reset( int index ) = 0

$prototypeV2=virtual void setAttribute( int index, bool attribute ) = 0

$prototypeV2=virtual void setChanged( int index, bool changed ) = 0

$prototypeV2=virtual void setProperty( int index, const QVariant & value ) = 0

$prototypeV2=virtual void setPropertyGroup( int index, const QString & group ) = 0

$prototypeV2=virtual void setVisible( int index, bool visible ) = 0

$extraMethods

#pragma ENDDUMP
