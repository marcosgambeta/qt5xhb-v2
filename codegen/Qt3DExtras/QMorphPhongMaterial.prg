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

$prototype=explicit QMorphPhongMaterial(Qt3DCore::QNode *parent = nullptr)

$prototype=~QMorphPhongMaterial()
$deleteMethod

%%
%% Q_PROPERTY(QColor ambient READ ambient WRITE setAmbient NOTIFY ambientChanged)
%%

$prototype=QColor ambient() const
$prototype=void setAmbient(const QColor &ambient) [slot]

%%
%% Q_PROPERTY(QColor diffuse READ diffuse WRITE setDiffuse NOTIFY diffuseChanged)
%%

$prototype=QColor diffuse() const
$prototype=void setDiffuse(const QColor &diffuse) [slot]

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
%% Q_PROPERTY(float interpolator READ interpolator WRITE setInterpolator NOTIFY interpolatorChanged)
%%

$prototype=float interpolator() const
$prototype=void setInterpolator(float interpolator) [slot]

%%
%% SIGNALS
%%

$prototype=void ambientChanged(const QColor &ambient)
$prototype=void diffuseChanged(const QColor &diffuse)
$prototype=void specularChanged(const QColor &specular)
$prototype=void shininessChanged(float shininess)
$prototype=void interpolatorChanged(float interpolator)

#pragma ENDDUMP
