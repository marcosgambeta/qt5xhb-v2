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

$prototype=explicit QMetalRoughMaterial(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QMetalRoughMaterial(QMetalRoughMaterialPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QMetalRoughMaterial()
$deleteMethod

%%
%% Q_PROPERTY(QVariant baseColor READ baseColor WRITE setBaseColor NOTIFY baseColorChanged)
%%

$prototypeV2=QVariant baseColor() const

$prototypeV2=void setBaseColor( const QVariant & baseColor ) [slot]

%%
%% Q_PROPERTY(QVariant metalness READ metalness WRITE setMetalness NOTIFY metalnessChanged)
%%

$prototypeV2=QVariant metalness() const

$prototypeV2=void setMetalness( const QVariant & metalness ) [slot]

%%
%% Q_PROPERTY(QVariant roughness READ roughness WRITE setRoughness NOTIFY roughnessChanged)
%%

$prototypeV2=QVariant roughness() const

$prototypeV2=void setRoughness( const QVariant & roughness ) [slot]

%%
%% Q_PROPERTY(QVariant ambientOcclusion READ ambientOcclusion WRITE setAmbientOcclusion NOTIFY ambientOcclusionChanged REVISION 10)
%%

$prototypeV2=QVariant ambientOcclusion() const

$prototypeV2=void setAmbientOcclusion( const QVariant & ambientOcclusion ) [slot]

%%
%% Q_PROPERTY(QVariant normal READ normal WRITE setNormal NOTIFY normalChanged REVISION 10)
%%

$prototypeV2=QVariant normal() const

$prototypeV2=void setNormal( const QVariant & normal ) [slot]

%%
%% Q_PROPERTY(float textureScale READ textureScale WRITE setTextureScale NOTIFY textureScaleChanged REVISION 10)
%%

$prototypeV2=float textureScale() const

$prototypeV2=void setTextureScale( float textureScale ) [slot]

%%
%% SIGNALS
%%

$prototype=void baseColorChanged(const QVariant &baseColor)
$prototype=void metalnessChanged(const QVariant &metalness)
$prototype=void roughnessChanged(const QVariant &roughness)
$prototype=void ambientOcclusionChanged(const QVariant &ambientOcclusion)
$prototype=void normalChanged(const QVariant &normal)
$prototype=void textureScaleChanged(float textureScale)

#pragma ENDDUMP
