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

$beginClassFrom=QWindow

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=Qt3DWindow(QScreen *screen = nullptr)

$prototype=~Qt3DWindow()
$deleteMethod

$prototype=void registerAspect(Qt3DCore::QAbstractAspect *aspect)
$prototype=void registerAspect(const QString &name)
$prototype=void setRootEntity(Qt3DCore::QEntity *root)
$prototype=void setActiveFrameGraph(Qt3DRender::QFrameGraphNode *activeFrameGraph)
$prototype=Qt3DRender::QFrameGraphNode *activeFrameGraph() const
$prototype=Qt3DExtras::QForwardRenderer *defaultFrameGraph() const
$prototype=Qt3DRender::QCamera *camera() const
$prototype=Qt3DRender::QRenderSettings *renderSettings() const
$prototype=void showEvent(QShowEvent *e) Q_DECL_OVERRIDE [protected]
$prototype=void resizeEvent(QResizeEvent *) Q_DECL_OVERRIDE [protected]

#pragma ENDDUMP
