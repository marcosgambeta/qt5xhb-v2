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

$prototypeV2=virtual QStringList actionNames() const = 0

$prototypeV2=virtual QString localizedActionName( const QString & name ) const

$prototypeV2=virtual QString localizedActionDescription( const QString & name ) const

$prototypeV2=virtual void doAction( const QString & actionName ) = 0

$prototypeV2=virtual QStringList keyBindingsForAction( const QString & actionName ) const = 0

$prototypeV2=static const QString & pressAction()

$prototypeV2=static const QString & increaseAction()

$prototypeV2=static const QString & decreaseAction()

$prototypeV2=static const QString & showMenuAction()

$prototypeV2=static const QString & setFocusAction()

$prototypeV2=static const QString & toggleAction()

$extraMethods

#pragma ENDDUMP
