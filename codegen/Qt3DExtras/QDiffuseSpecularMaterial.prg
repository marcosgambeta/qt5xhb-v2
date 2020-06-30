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

$prototype=explicit QDiffuseSpecularMaterial(Qt3DCore::QNode *parent = nullptr)

$prototype=~QDiffuseSpecularMaterial()
$deleteMethod

%%
%% Q_PROPERTY(QColor ambient READ ambient WRITE setAmbient NOTIFY ambientChanged)
%%

$prototypeV2=QColor ambient() const

$prototypeV2=void setAmbient( const QColor & ambient ) [slot]

%%
%% Q_PROPERTY(QVariant diffuse READ diffuse WRITE setDiffuse NOTIFY diffuseChanged)
%%

$prototypeV2=QVariant diffuse() const

$prototypeV2=void setDiffuse( const QVariant & diffuse ) [slot]

%%
%% Q_PROPERTY(QVariant specular READ specular WRITE setSpecular NOTIFY specularChanged)
%%

$prototypeV2=QVariant specular() const

$prototypeV2=void setSpecular( const QVariant & specular ) [slot]

%%
%% Q_PROPERTY(float shininess READ shininess WRITE setShininess NOTIFY shininessChanged)
%%

$prototypeV2=float shininess() const

$prototypeV2=void setShininess( float shininess ) [slot]

%%
%% Q_PROPERTY(QVariant normal READ normal WRITE setNormal NOTIFY normalChanged)
%%

$prototypeV2=QVariant normal() const

$prototypeV2=void setNormal( const QVariant & normal ) [slot]

%%
%% Q_PROPERTY(float textureScale READ textureScale WRITE setTextureScale NOTIFY textureScaleChanged)
%%

$prototypeV2=float textureScale() const

$prototypeV2=void setTextureScale( float textureScale ) [slot]

%%
%% Q_PROPERTY(bool alphaBlending READ isAlphaBlendingEnabled WRITE setAlphaBlendingEnabled NOTIFY alphaBlendingEnabledChanged)
%%

$prototypeV2=bool isAlphaBlendingEnabled() const

$prototypeV2=void setAlphaBlendingEnabled( bool enabled ) [slot]

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
