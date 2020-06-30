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

$prototype=explicit QDiffuseSpecularMapMaterial(Qt3DCore::QNode *parent = nullptr)

$prototype=~QDiffuseSpecularMapMaterial()
$deleteMethod

%%
%% Q_PROPERTY(QColor ambient READ ambient WRITE setAmbient NOTIFY ambientChanged)
%%

$prototypeV2=QColor ambient() const

$prototypeV2=void setAmbient( const QColor & ambient ) [slot]

%%
%% Q_PROPERTY(float shininess READ shininess WRITE setShininess NOTIFY shininessChanged)
%%

$prototypeV2=float shininess() const

$prototypeV2=void setShininess( float shininess ) [slot]

%%
%% Q_PROPERTY(Qt3DRender::QAbstractTexture *specular READ specular WRITE setSpecular NOTIFY specularChanged)
%%

$prototypeV2=Qt3DRender::QAbstractTexture * specular() const

$prototypeV2=void setSpecular( Qt3DRender::QAbstractTexture * specular ) [slot]

%%
%% Q_PROPERTY(Qt3DRender::QAbstractTexture *diffuse READ diffuse WRITE setDiffuse NOTIFY diffuseChanged)
%%

$prototypeV2=Qt3DRender::QAbstractTexture * diffuse() const

$prototypeV2=void setDiffuse( Qt3DRender::QAbstractTexture * diffuse ) [slot]

%%
%% Q_PROPERTY(float textureScale READ textureScale WRITE setTextureScale NOTIFY textureScaleChanged)
%%

$prototypeV2=float textureScale() const

$prototypeV2=void setTextureScale( float textureScale ) [slot]

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

$prototype=void specularChanged(Qt3DRender::QAbstractTexture *specular)
$signalMethod=|void|specularChanged|Qt3DRender::QAbstractTexture *

$prototype=void shininessChanged(float shininess)
$signalMethod=|void|shininessChanged|float

$prototype=void textureScaleChanged(float textureScale)
$signalMethod=|void|textureScaleChanged|float

#pragma ENDDUMP
