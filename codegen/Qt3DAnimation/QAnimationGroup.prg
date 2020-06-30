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

$prototype=explicit QAnimationGroup(QObject *parent = nullptr)

%% $deleteMethod

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototypeV2=QString name() const

$prototypeV2=void setName( const QString & name ) (slot)

%%
%% Q_PROPERTY(float position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototypeV2=float position() const

$prototypeV2=void setPosition( float position ) (slot)

%%
%% Q_PROPERTY(float duration READ duration NOTIFY durationChanged)
%%

$prototypeV2=float duration() const

%%
%%
%%

$prototypeV2=QVector<Qt3DAnimation::QAbstractAnimation *> animationList()

$prototypeV2=void setAnimations( const QVector<Qt3DAnimation::QAbstractAnimation *> & animations )

$prototypeV2=void addAnimation( Qt3DAnimation::QAbstractAnimation * animation )

$prototypeV2=void removeAnimation( Qt3DAnimation::QAbstractAnimation * animation )

%%
%% SIGNALS
%%

$prototype=void nameChanged( const QString & name )
$signalMethod=|void|nameChanged|const QString &

$prototype=void positionChanged( float position )
$signalMethod=|void|positionChanged|float

$prototype=void durationChanged( float duration )
$signalMethod=|void|durationChanged|float

#pragma ENDDUMP
