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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAnimationController(QObject *parent = nullptr)

%% $deleteMethod

%%
%% Q_PROPERTY(int activeAnimationGroup READ activeAnimationGroup WRITE setActiveAnimationGroup NOTIFY activeAnimationGroupChanged)
%%

$prototypeV2=int activeAnimationGroup() const

$prototypeV2=void setActiveAnimationGroup( int index ) (slot)

%%
%% Q_PROPERTY(float position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototypeV2=float position() const

$prototypeV2=void setPosition( float position ) (slot)

%%
%% Q_PROPERTY(float positionScale READ positionScale WRITE setPositionScale NOTIFY positionScaleChanged)
%%

$prototypeV2=float positionScale() const

$prototypeV2=void setPositionScale( float scale ) (slot)

%%
%% Q_PROPERTY(float positionOffset READ positionOffset WRITE setPositionOffset NOTIFY positionOffsetChanged)
%%

$prototypeV2=float positionOffset() const

$prototypeV2=void setPositionOffset( float offset ) (slot)

%%
%% Q_PROPERTY(Qt3DCore::QEntity *entity READ entity WRITE setEntity NOTIFY entityChanged)
%%

$prototypeV2=Qt3DCore::QEntity * entity() const

$prototypeV2=void setEntity( Qt3DCore::QEntity * entity ) (slot)

%%
%% Q_PROPERTY(bool recursive READ recursive WRITE setRecursive NOTIFY recursiveChanged)
%%

$prototypeV2=bool recursive() const

$prototypeV2=void setRecursive( bool recursive ) (slot)

%%
%%
%%

$prototypeV2=QVector<Qt3DAnimation::QAnimationGroup *> animationGroupList()

$prototypeV2=void setAnimationGroups( const QVector<Qt3DAnimation::QAnimationGroup *> & animationGroups )

$prototypeV2=void addAnimationGroup( Qt3DAnimation::QAnimationGroup * animationGroups )

$prototypeV2=void removeAnimationGroup( Qt3DAnimation::QAnimationGroup * animationGroups )

$prototypeV2=Q_INVOKABLE int getAnimationIndex( const QString & name ) const

$prototypeV2=Q_INVOKABLE Qt3DAnimation::QAnimationGroup * getGroup( int index ) const

%%
%% SIGNALS
%%

$prototype=void activeAnimationGroupChanged( int index )
$signalMethod=|void|activeAnimationGroupChanged|int

$prototype=void positionChanged( float position )
$signalMethod=|void|positionChanged|float

$prototype=void positionScaleChanged( float scale )
$signalMethod=|void|positionScaleChanged|float

$prototype=void positionOffsetChanged( float offset )
$signalMethod=|void|positionOffsetChanged|float

$prototype=void entityChanged( Qt3DCore::QEntity * entity )
$signalMethod=|void|entityChanged|Qt3DCore::QEntity *

$prototype=void recursiveChanged( bool recursive )
$signalMethod=|void|recursiveChanged|bool

#pragma ENDDUMP
