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

$prototype=explicit QMorphPhongMaterial(Qt3DCore::QNode *parent = nullptr)

$prototype=~QMorphPhongMaterial()
$deleteMethod

%%
%% Q_PROPERTY(QColor ambient READ ambient WRITE setAmbient NOTIFY ambientChanged)
%%

$prototypeV2=QColor ambient() const

$prototypeV2=void setAmbient( const QColor & ambient ) [slot]

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
%% Q_PROPERTY(float shininess READ shininess WRITE setShininess NOTIFY shininessChanged)
%%

$prototypeV2=float shininess() const

$prototypeV2=void setShininess( float shininess ) [slot]

%%
%% Q_PROPERTY(float interpolator READ interpolator WRITE setInterpolator NOTIFY interpolatorChanged)
%%

$prototypeV2=float interpolator() const

$prototypeV2=void setInterpolator( float interpolator ) [slot]

%%
%% SIGNALS
%%

$prototype=void ambientChanged(const QColor &ambient)
$prototype=void diffuseChanged(const QColor &diffuse)
$prototype=void specularChanged(const QColor &specular)
$prototype=void shininessChanged(float shininess)
$prototype=void interpolatorChanged(float interpolator)

#pragma ENDDUMP
