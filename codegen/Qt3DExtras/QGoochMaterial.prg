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

$prototype=explicit QGoochMaterial(Qt3DCore::QNode *parent = nullptr)
$prototype=explicit QGoochMaterial(QGoochMaterialPrivate &dd, Qt3DCore::QNode *parent = nullptr) [protected]

$prototype=~QGoochMaterial()
$deleteMethod

%%
%% Q_PROPERTY(QColor diffuse READ diffuse WRITE setDiffuse NOTIFY diffuseChanged)
%%

$prototypeV2=QColor diffuse() const

$prototypeV2=void setDiffuse( const QColor & diffuse ) [slot]

%%
%% Q_PROPERTY(QColor specular READ specular WRITE setSpecular NOTIFY specularChanged)
%%

$prototypeV2=QColor specular() const

$prototypeV2=void setSpecular( const QColor & specular ) [slot]

%%
%% Q_PROPERTY(QColor cool READ cool WRITE setCool NOTIFY coolChanged)
%%

$prototypeV2=QColor cool() const

$prototypeV2=void setCool( const QColor & cool ) [slot]

%%
%% Q_PROPERTY(QColor warm READ warm WRITE setWarm NOTIFY warmChanged)
%%

$prototypeV2=QColor warm() const

$prototypeV2=void setWarm( const QColor & warm ) [slot]

%%
%% Q_PROPERTY(float alpha READ alpha WRITE setAlpha NOTIFY alphaChanged)
%%

$prototypeV2=float alpha() const

$prototypeV2=void setAlpha( float alpha ) [slot]

%%
%% Q_PROPERTY(float beta READ beta WRITE setBeta NOTIFY betaChanged)
%%

$prototypeV2=float beta() const

$prototypeV2=void setBeta( float beta ) [slot]

%%
%% Q_PROPERTY(float shininess READ shininess WRITE setShininess NOTIFY shininessChanged)
%%

$prototypeV2=float shininess() const

$prototypeV2=void setShininess( float shininess ) [slot]

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void diffuseChanged(const QColor &diffuse)
$prototype=void specularChanged(const QColor &specular)
$prototype=void coolChanged(const QColor &cool)
$prototype=void warmChanged(const QColor &warm)
$prototype=void alphaChanged(float alpha)
$prototype=void betaChanged(float beta)
$prototype=void shininessChanged(float shininess)

#pragma ENDDUMP
