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

$beginClassFrom=QNode

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QEntity(QNode *parent = nullptr)
$constructor=|new|QNode *=nullptr

$prototype=explicit QEntity(QEntityPrivate &dd, QNode *parent = nullptr) [protected]

$prototype=virtual ~QEntity()
$deleteMethod

$prototypeV2=QComponentVector components() const

$prototypeV2=void addComponent( QComponent * comp )

$prototypeV2=void removeComponent( QComponent * comp )

$prototypeV2=QEntity * parentEntity() const

$prototype=QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

#pragma ENDDUMP
