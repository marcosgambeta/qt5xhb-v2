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

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QBackendNodeMapper()
$deleteMethod

$prototype=virtual QBackendNode *create(const QNodeCreatedChangeBasePtr &change) const = 0
%% TODO: implementar
%% $virtualMethod=|QBackendNode *|create|const QNodeCreatedChangeBasePtr &

$prototypeV2=virtual QBackendNode * get( QNodeId id ) const = 0

$prototypeV2=virtual void destroy( QNodeId id ) const = 0

$extraMethods

#pragma ENDDUMP
