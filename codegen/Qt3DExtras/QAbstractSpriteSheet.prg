%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DCore::QNode

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAbstractSpriteSheet(QAbstractSpriteSheetPrivate &d, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QAbstractSpriteSheet()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DRender::QAbstractTexture *texture READ texture WRITE setTexture NOTIFY textureChanged)
%%

$prototypeV2=Qt3DRender::QAbstractTexture * texture() const

$prototypeV2=void setTexture( Qt3DRender::QAbstractTexture * texture ) [slot]

%%
%% Q_PROPERTY(QMatrix3x3 textureTransform READ textureTransform NOTIFY textureTransformChanged)
%%

$prototypeV2=QMatrix3x3 textureTransform() const

%%
%% Q_PROPERTY(int currentIndex READ currentIndex WRITE setCurrentIndex NOTIFY currentIndexChanged)
%%

$prototypeV2=int currentIndex() const

$prototypeV2=void setCurrentIndex( int currentIndex ) [slot]

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void textureChanged( Qt3DRender::QAbstractTexture * texture )
$signalMethod=|void|textureChanged|Qt3DRender::QAbstractTexture *

$prototype=void textureTransformChanged( const QMatrix3x3 & textureTransform )
$signalMethod=|void|textureTransformChanged|const QMatrix3x3 &

$prototype=void currentIndexChanged( int currentIndex )
$signalMethod=|void|currentIndexChanged|int

#pragma ENDDUMP
