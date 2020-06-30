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

$beginClassFrom=QObject,QAbstractExtensionManager

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QExtensionManager ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=virtual QObject * extension( QObject * object, const QString & iid ) const

$prototypeV2=virtual void registerExtensions( QAbstractExtensionFactory * factory, const QString & iid = QString() )

$prototypeV2=virtual void unregisterExtensions( QAbstractExtensionFactory * factory, const QString & iid = QString() )

#pragma ENDDUMP
