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

$prototype=explicit QAbstractAnimation(QAbstractAnimationPrivate &dd, QObject *parent = nullptr) [protected]

%% $deleteMethod

%%
%% Q_PROPERTY(QString animationName READ animationName WRITE setAnimationName NOTIFY animationNameChanged)
%%

$prototypeV2=QString animationName() const

$prototypeV2=void setAnimationName( const QString & name ) (slot)

%%
%% Q_PROPERTY(QAbstractAnimation::AnimationType animationType READ animationType CONSTANT)
%%

$prototypeV2=QAbstractAnimation::AnimationType animationType() const

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

$prototype=void setDuration(float duration) [protected]

%%
%% SIGNALS
%%

$prototype=void animationNameChanged( const QString & name )
$signalMethod=|void|animationNameChanged|const QString &

$prototype=void durationChanged( float duration )
$signalMethod=|void|durationChanged|float

$prototype=void positionChanged( float position )
$signalMethod=|void|positionChanged|float

#pragma ENDDUMP
