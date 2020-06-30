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

%% TODO:
%% #if defined(Q_ATOMIC_INT64_IS_SUPPORTED)
%%     typedef quint64 CommandId;
%% #else
%%     typedef quint32 CommandId;
%% #endif

$includes

$prototype=explicit QNodeCommand(QNodeId id)
$constructor=|new|QNodeId

$prototype=explicit QNodeCommand(QNodeCommandPrivate &dd, QNodeId id) [protected]

$prototype=~QNodeCommand()
$deleteMethod

$prototypeV2=CommandId commandId() const

$prototypeV2=QString name() const

$prototypeV2=void setName( const QString & name )

$prototypeV2=QVariant data() const

$prototypeV2=void setData( const QVariant & data )

$prototypeV2=CommandId inReplyTo() const

$prototypeV2=void setReplyToCommandId( CommandId id )

#pragma ENDDUMP
