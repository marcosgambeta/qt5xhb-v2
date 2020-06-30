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

$prototype=explicit QPhongAlphaMaterial(Qt3DCore::QNode *parent = nullptr)

$prototype=~QPhongAlphaMaterial()
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
%% Q_PROPERTY(float alpha READ alpha WRITE setAlpha NOTIFY alphaChanged)
%%

$prototypeV2=float alpha() const

$prototypeV2=void setAlpha( float alpha ) [slot]

%%
%% Q_PROPERTY(Qt3DRender::QBlendEquationArguments::Blending sourceRgbArg READ sourceRgbArg WRITE setSourceRgbArg NOTIFY sourceRgbArgChanged)
%%

$prototypeV2=Qt3DRender::QBlendEquationArguments::Blending sourceRgbArg() const

$prototypeV2=void setSourceRgbArg( Qt3DRender::QBlendEquationArguments::Blending sourceRgbArg ) [slot]

%%
%% Q_PROPERTY(Qt3DRender::QBlendEquationArguments::Blending destinationRgbArg READ destinationRgbArg WRITE setDestinationRgbArg NOTIFY destinationRgbArgChanged)
%%

$prototypeV2=Qt3DRender::QBlendEquationArguments::Blending destinationRgbArg() const

$prototypeV2=void setDestinationRgbArg( Qt3DRender::QBlendEquationArguments::Blending destinationRgbArg ) [slot]

%%
%% Q_PROPERTY(Qt3DRender::QBlendEquationArguments::Blending sourceAlphaArg READ sourceAlphaArg WRITE setSourceAlphaArg NOTIFY sourceAlphaArgChanged)
%%

$prototypeV2=Qt3DRender::QBlendEquationArguments::Blending sourceAlphaArg() const

$prototypeV2=void setSourceAlphaArg( Qt3DRender::QBlendEquationArguments::Blending sourceAlphaArg ) [slot]

%%
%% Q_PROPERTY(Qt3DRender::QBlendEquationArguments::Blending destinationAlphaArg READ destinationAlphaArg WRITE setDestinationAlphaArg NOTIFY destinationAlphaArgChanged)
%%

$prototypeV2=Qt3DRender::QBlendEquationArguments::Blending destinationAlphaArg() const

$prototypeV2=void setDestinationAlphaArg( Qt3DRender::QBlendEquationArguments::Blending destinationAlphaArg ) [slot]

%%
%% Q_PROPERTY(Qt3DRender::QBlendEquation::BlendFunction blendFunctionArg READ blendFunctionArg WRITE setBlendFunctionArg NOTIFY blendFunctionArgChanged)
%%

$prototypeV2=Qt3DRender::QBlendEquation::BlendFunction blendFunctionArg() const

$prototypeV2=void setBlendFunctionArg( Qt3DRender::QBlendEquation::BlendFunction blendFunctionArg ) [slot]

%%
%% SIGNALS
%%

$prototype=void ambientChanged(const QColor &ambient)
$prototype=void diffuseChanged(const QColor &diffuse)
$prototype=void specularChanged(const QColor &specular)
$prototype=void shininessChanged(float shininess)
$prototype=void alphaChanged(float alpha)
$prototype=void sourceRgbArgChanged(Qt3DRender::QBlendEquationArguments::Blending sourceRgbArg)
$prototype=void destinationRgbArgChanged(Qt3DRender::QBlendEquationArguments::Blending destinationRgbArg)
$prototype=void sourceAlphaArgChanged(Qt3DRender::QBlendEquationArguments::Blending sourceAlphaArg)
$prototype=void destinationAlphaArgChanged(Qt3DRender::QBlendEquationArguments::Blending destinationAlphaArg)
$prototype=void blendFunctionArgChanged(Qt3DRender::QBlendEquation::BlendFunction blendFunctionArg)

#pragma ENDDUMP
