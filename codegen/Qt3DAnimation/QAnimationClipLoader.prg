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

$beginClassFrom=QAbstractAnimationClip

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAnimationClipLoader(Qt3DCore::QNode *parent = nullptr)

$prototype=explicit QAnimationClipLoader(const QUrl &source, Qt3DCore::QNode *parent = nullptr)

$prototype=explicit QAnimationClipLoader(QAnimationClipLoaderPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QAnimationClipLoader()
$deleteMethod

%%
%% Q_PROPERTY(QUrl source READ source WRITE setSource NOTIFY sourceChanged)
%%

$prototypeV2=QUrl source() const

$prototypeV2=void setSource( const QUrl & source ) (slot)

%%
%% Q_PROPERTY(Status status READ status NOTIFY statusChanged)
%%

$prototypeV2=Status status() const

%%
%%
%%

$prototype=void sceneChangeEvent(const Qt3DCore::QSceneChangePtr &change) Q_DECL_OVERRIDE [protected]

$prototype=Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE [private]

%%
%% SIGNALS
%%

$prototype=void sourceChanged( const QUrl & source )
$signalMethod=|void|sourceChanged|const QUrl &

$prototype=void statusChanged( QAnimationClipLoader::Status status )
$signalMethod=|void|statusChanged|QAnimationClipLoader::Status

#pragma ENDDUMP
