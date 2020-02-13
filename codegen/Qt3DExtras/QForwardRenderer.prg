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

$beginClassFrom=Qt3DRender::QTechniqueFilter

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QForwardRenderer(Qt3DCore::QNode *parent = nullptr)

$prototype=~QForwardRenderer()
$deleteMethod

%%
%% Q_PROPERTY(QObject *surface READ surface WRITE setSurface NOTIFY surfaceChanged)
%%

%%
%% Q_PROPERTY(QObject *window READ surface WRITE setSurface NOTIFY surfaceChanged)
%%

$prototype=QObject *surface() const
$prototype=void setSurface(QObject * surface) [slot]

%%
%% Q_PROPERTY(QRectF viewportRect READ viewportRect WRITE setViewportRect NOTIFY viewportRectChanged)
%%

$prototype=QRectF viewportRect() const
$prototype=void setViewportRect(const QRectF &viewportRect) [slot]

%%
%% Q_PROPERTY(QColor clearColor READ clearColor WRITE setClearColor NOTIFY clearColorChanged)
%%

$prototype=QColor clearColor() const
$prototype=void setClearColor(const QColor &clearColor) [slot]

%%
%% Q_PROPERTY(Qt3DCore::QEntity *camera READ camera WRITE setCamera NOTIFY cameraChanged)
%%

$prototype=Qt3DCore::QEntity *camera() const
$prototype=void setCamera(Qt3DCore::QEntity *camera) [slot]

%%
%% Q_PROPERTY(QSize externalRenderTargetSize READ externalRenderTargetSize WRITE setExternalRenderTargetSize NOTIFY externalRenderTargetSizeChanged)
%%

$prototype=QSize externalRenderTargetSize() const
$prototype=void setExternalRenderTargetSize(const QSize &size) [slot]

%%
%% Q_PROPERTY(bool frustumCulling READ isFrustumCullingEnabled WRITE setFrustumCullingEnabled NOTIFY frustumCullingEnabledChanged)
%%

$prototype=bool isFrustumCullingEnabled() const
$prototype=void setFrustumCullingEnabled(bool enabled) [slot]

%%
%% Q_PROPERTY(float gamma READ gamma WRITE setGamma NOTIFY gammaChanged REVISION 9)
%%

$prototype=float gamma() const
$prototype=void setGamma(float gamma) [slot]

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void viewportRectChanged(const QRectF &viewportRect)
$prototype=void clearColorChanged(const QColor &clearColor)
$prototype=void cameraChanged(Qt3DCore::QEntity *camera)
$prototype=void surfaceChanged(QObject *surface)
$prototype=void externalRenderTargetSizeChanged(const QSize &size)
$prototype=void frustumCullingEnabledChanged(bool enabled)
$prototype=void gammaChanged(float gamma)

#pragma ENDDUMP
