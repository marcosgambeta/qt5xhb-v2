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

$prototype=explicit QDiffuseMapMaterial(Qt3DCore::QNode *parent = nullptr)

$prototype=~QDiffuseMapMaterial()
$deleteMethod

%%
%% Q_PROPERTY(QColor ambient READ ambient WRITE setAmbient NOTIFY ambientChanged)
%%

$prototype=QColor ambient() const
$prototype=void setAmbient(const QColor &color) [slot]

%%
%% Q_PROPERTY(QColor specular READ specular WRITE setSpecular NOTIFY specularChanged)
%%

$prototype=QColor specular() const
$prototype=void setSpecular(const QColor &specular) [slot]

%%
%% Q_PROPERTY(float shininess READ shininess WRITE setShininess NOTIFY shininessChanged)
%%

$prototype=float shininess() const
$prototype=void setShininess(float shininess) [slot]

%%
%% Q_PROPERTY(Qt3DRender::QAbstractTexture *diffuse READ diffuse WRITE setDiffuse NOTIFY diffuseChanged)
%%

$prototype=Qt3DRender::QAbstractTexture *diffuse() const
$prototype=void setDiffuse(Qt3DRender::QAbstractTexture *diffuse) [slot]

%%
%% Q_PROPERTY(float textureScale READ textureScale WRITE setTextureScale NOTIFY textureScaleChanged)
%%

$prototype=float textureScale() const
$prototype=void setTextureScale(float textureScale) [slot]

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void ambientChanged(const QColor &ambient)
$signalMethod=|void|ambientChanged|const QColor &

$prototype=void diffuseChanged(Qt3DRender::QAbstractTexture *diffuse)
$signalMethod=|void|diffuseChanged|Qt3DRender::QAbstractTexture *

$prototype=void specularChanged(const QColor &specular)
$signalMethod=|void|specularChanged|const QColor &

$prototype=void shininessChanged(float shininess)
$signalMethod=|void|shininessChanged|float

$prototype=void textureScaleChanged(float textureScale)
$signalMethod=|void|textureScaleChanged|float

#pragma ENDDUMP
