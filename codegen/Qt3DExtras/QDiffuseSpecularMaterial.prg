%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=explicit QDiffuseSpecularMaterial(Qt3DCore::QNode *parent = nullptr)

$prototype=~QDiffuseSpecularMaterial()
$deleteMethod

%%
%% Q_PROPERTY(QColor ambient READ ambient WRITE setAmbient NOTIFY ambientChanged)
%%

$prototype=QColor ambient() const
$prototype=void setAmbient(const QColor &ambient) [slot]

%%
%% Q_PROPERTY(QVariant diffuse READ diffuse WRITE setDiffuse NOTIFY diffuseChanged)
%%

$prototype=QVariant diffuse() const
$prototype=void setDiffuse(const QVariant &diffuse) [slot]

%%
%% Q_PROPERTY(QVariant specular READ specular WRITE setSpecular NOTIFY specularChanged)
%%

$prototype=QVariant specular() const
$prototype=void setSpecular(const QVariant &specular) [slot]

%%
%% Q_PROPERTY(float shininess READ shininess WRITE setShininess NOTIFY shininessChanged)
%%

$prototype=float shininess() const
$prototype=void setShininess(float shininess) [slot]

%%
%% Q_PROPERTY(QVariant normal READ normal WRITE setNormal NOTIFY normalChanged)
%%

$prototype=QVariant normal() const
$prototype=void setNormal(const QVariant &normal) [slot]

%%
%% Q_PROPERTY(float textureScale READ textureScale WRITE setTextureScale NOTIFY textureScaleChanged)
%%

$prototype=float textureScale() const
$prototype=void setTextureScale(float textureScale) [slot]

%%
%% Q_PROPERTY(bool alphaBlending READ isAlphaBlendingEnabled WRITE setAlphaBlendingEnabled NOTIFY alphaBlendingEnabledChanged)
%%

$prototype=bool isAlphaBlendingEnabled() const
$prototype=void setAlphaBlendingEnabled(bool enabled) [slot]

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void ambientChanged(const QColor &ambient)
$signalMethod=|void|ambientChanged|const QColor &

$prototype=void diffuseChanged(const QVariant &diffuse)
$signalMethod=|void|diffuseChanged|const QVariant &

$prototype=void specularChanged(const QVariant &specular)
$signalMethod=|void|specularChanged|const QVariant &

$prototype=void shininessChanged(float shininess)
$signalMethod=|void|shininessChanged|float

$prototype=void normalChanged(const QVariant &normal)
$signalMethod=|void|normalChanged|const QVariant &

$prototype=void textureScaleChanged(float textureScale)
$signalMethod=|void|textureScaleChanged|float

$prototype=void alphaBlendingEnabledChanged(bool enabled)
$signalMethod=|void|alphaBlendingEnabledChanged|bool

#pragma ENDDUMP
