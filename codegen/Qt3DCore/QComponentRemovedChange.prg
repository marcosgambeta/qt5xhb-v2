%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSceneChange

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QComponentRemovedChange(const QEntity *entity, const QComponent *component)
$constructor=|new|const QEntity *,const QComponent *

$prototype=~QComponentRemovedChange()
$deleteMethod

$prototypeV2=QNodeId entityId() const Q_DECL_NOTHROW

$prototypeV2=QNodeId componentId() const Q_DECL_NOTHROW

$prototypeV2=const QMetaObject * componentMetaObject() const Q_DECL_NOTHROW

#pragma ENDDUMP
