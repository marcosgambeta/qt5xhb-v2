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

$prototypeV2=QObject * surface() const

$prototypeV2=void setSurface( QObject * surface ) [slot]

%%
%% Q_PROPERTY(QRectF viewportRect READ viewportRect WRITE setViewportRect NOTIFY viewportRectChanged)
%%

$prototypeV2=QRectF viewportRect() const

$prototypeV2=void setViewportRect( const QRectF & viewportRect ) [slot]

%%
%% Q_PROPERTY(QColor clearColor READ clearColor WRITE setClearColor NOTIFY clearColorChanged)
%%

$prototypeV2=QColor clearColor() const

$prototypeV2=void setClearColor( const QColor & clearColor ) [slot]

%%
%% Q_PROPERTY(Qt3DCore::QEntity *camera READ camera WRITE setCamera NOTIFY cameraChanged)
%%

$prototypeV2=Qt3DCore::QEntity * camera() const

$prototypeV2=void setCamera( Qt3DCore::QEntity * camera ) [slot]

%%
%% Q_PROPERTY(QSize externalRenderTargetSize READ externalRenderTargetSize WRITE setExternalRenderTargetSize NOTIFY externalRenderTargetSizeChanged)
%%

$prototypeV2=QSize externalRenderTargetSize() const

$prototypeV2=void setExternalRenderTargetSize( const QSize & size ) [slot]

%%
%% Q_PROPERTY(bool frustumCulling READ isFrustumCullingEnabled WRITE setFrustumCullingEnabled NOTIFY frustumCullingEnabledChanged)
%%

$prototypeV2=bool isFrustumCullingEnabled() const

$prototypeV2=void setFrustumCullingEnabled( bool enabled ) [slot]

%%
%% Q_PROPERTY(float gamma READ gamma WRITE setGamma NOTIFY gammaChanged REVISION 9)
%%

$prototypeV2=float gamma() const

$prototypeV2=void setGamma( float gamma ) [slot]

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
