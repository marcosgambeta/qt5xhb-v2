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

$prototypeV2=virtual int count() const = 0

$prototypeV2=virtual QString declaredInClass( int index ) const = 0

$prototypeV2=virtual int indexOf( const QString & name ) const = 0

$prototypeV2=virtual bool inheritedFromWidget( int index ) const = 0

$prototypeV2=virtual bool isSignal( int index ) const = 0

$prototypeV2=virtual bool isSlot( int index ) const = 0

$prototypeV2=virtual bool isVisible( int index ) const = 0

$prototypeV2=virtual QString memberGroup( int index ) const = 0

$prototypeV2=virtual QString memberName( int index ) const = 0

$prototypeV2=virtual QList<QByteArray> parameterNames( int index ) const = 0

$prototypeV2=virtual QList<QByteArray> parameterTypes( int index ) const = 0

$prototypeV2=virtual void setMemberGroup( int index, const QString & group ) = 0

$prototypeV2=virtual void setVisible( int index, bool visible ) = 0

$prototypeV2=virtual QString signature( int index ) const = 0

$extraMethods

#pragma ENDDUMP
