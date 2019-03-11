%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=Qt3DRender::QAbstractTexture *texture() const
$prototype=void setTexture(Qt3DRender::QAbstractTexture *texture) [slot]

%%
%% Q_PROPERTY(QVector2D textureOffset READ textureOffset WRITE setTextureOffset NOTIFY textureOffsetChanged)
%%

$prototype=QVector2D textureOffset() const
$prototype=void setTextureOffset(QVector2D textureOffset) [slot]

%%
%% Q_PROPERTY(QMatrix3x3 textureTransform READ textureTransform WRITE setTextureTransform NOTIFY textureTransformChanged REVISION 10)
%%

$prototype=QMatrix3x3 textureTransform() const
$prototype=void setTextureTransform(const QMatrix3x3 &matrix) [slot]

%%
%% SIGNALS
%%

$prototype=void textureChanged(Qt3DRender::QAbstractTexture *texture)
$prototype=void textureOffsetChanged(QVector2D textureOffset)
$prototype=void textureTransformChanged(const QMatrix3x3 &textureTransform)

#pragma ENDDUMP
