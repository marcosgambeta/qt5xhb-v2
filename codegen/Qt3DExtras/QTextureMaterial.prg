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

$beginClassFrom=Qt3DRender::QMaterial

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QTextureMaterial(Qt3DCore::QNode *parent = nullptr)

$prototype=~QTextureMaterial()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DRender::QAbstractTexture *texture READ texture WRITE setTexture NOTIFY textureChanged)
%%

$prototypeV2=Qt3DRender::QAbstractTexture * texture() const

$prototypeV2=void setTexture( Qt3DRender::QAbstractTexture * texture ) [slot]

%%
%% Q_PROPERTY(QVector2D textureOffset READ textureOffset WRITE setTextureOffset NOTIFY textureOffsetChanged)
%%

$prototypeV2=QVector2D textureOffset() const

$prototypeV2=void setTextureOffset( QVector2D textureOffset ) [slot]

%%
%% Q_PROPERTY(QMatrix3x3 textureTransform READ textureTransform WRITE setTextureTransform NOTIFY textureTransformChanged REVISION 10)
%%

$prototypeV2=QMatrix3x3 textureTransform() const

$prototypeV2=void setTextureTransform( const QMatrix3x3 & matrix ) [slot]

%%
%% SIGNALS
%%

$prototype=void textureChanged(Qt3DRender::QAbstractTexture *texture)
$prototype=void textureOffsetChanged(QVector2D textureOffset)
$prototype=void textureTransformChanged(const QMatrix3x3 &textureTransform)

#pragma ENDDUMP
