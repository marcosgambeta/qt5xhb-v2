%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractChannelMapping

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QChannelMapping(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QChannelMapping(QChannelMappingPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QChannelMapping()
$deleteMethod

%%
%% Q_PROPERTY(QString channelName READ channelName WRITE setChannelName NOTIFY channelNameChanged)
%%

$prototypeV2=QString channelName() const

$prototypeV2=void setChannelName( const QString & channelName ) (slot)

%%
%% Q_PROPERTY(Qt3DCore::QNode *target READ target WRITE setTarget NOTIFY targetChanged)
%%

$prototypeV2=Qt3DCore::QNode * target() const

$prototypeV2=void setTarget( Qt3DCore::QNode * target ) (slot)

%%
%% Q_PROPERTY(QString property READ property WRITE setProperty NOTIFY propertyChanged)
%%

$prototypeV2=QString property() const

$prototypeV2=void setProperty( const QString & property ) (slot)

%%
%%
%%

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

%%
%% SIGNALS
%%

$prototype=void channelNameChanged( QString channelName )
$signalMethod=|void|channelNameChanged|QString

$prototype=void targetChanged( Qt3DCore::QNode * target )
$signalMethod=|void|targetChanged|Qt3DCore::QNode *

$prototype=void propertyChanged( QString property )
$signalMethod=|void|propertyChanged|QString

#pragma ENDDUMP
