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

$beginClassFrom=QObject,QAbstractExtensionFactory

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDesigner/QExtensionManager>

$prototype=QExtensionFactory ( QExtensionManager * parent = nullptr )
$constructor=|new|QExtensionManager *=nullptr

$deleteMethod

$prototypeV2=QExtensionManager * extensionManager() const

$prototypeV2=virtual QObject * extension( QObject * object, const QString & iid ) const

#pragma ENDDUMP
