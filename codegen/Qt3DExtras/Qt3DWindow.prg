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

$prototypeV2=void registerAspect( Qt3DCore::QAbstractAspect * aspect )

$prototypeV2=void registerAspect( const QString & name )

$prototypeV2=void setRootEntity( Qt3DCore::QEntity * root )

$prototypeV2=void setActiveFrameGraph( Qt3DRender::QFrameGraphNode * activeFrameGraph )

$prototypeV2=Qt3DRender::QFrameGraphNode * activeFrameGraph() const

$prototypeV2=Qt3DExtras::QForwardRenderer * defaultFrameGraph() const

$prototypeV2=Qt3DRender::QCamera * camera() const

$prototypeV2=Qt3DRender::QRenderSettings * renderSettings() const

$prototype=void showEvent(QShowEvent *e) Q_DECL_OVERRIDE [protected]

$prototype=void resizeEvent(QResizeEvent *) Q_DECL_OVERRIDE [protected]

#pragma ENDDUMP
