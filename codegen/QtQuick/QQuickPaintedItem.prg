%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QQuickItem

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=bool antialiasing() const

$prototypeV2=QRectF contentsBoundingRect() const

$prototypeV2=qreal contentsScale() const

$prototypeV2=QSize contentsSize() const

$prototypeV2=QColor fillColor() const

$prototypeV2=bool mipmap() const

$prototypeV2=bool opaquePainting() const

$prototype=virtual void paint(QPainter * painter) = 0
$virtualMethod=|void|paint|QPainter *

$prototypeV2=QQuickPaintedItem::PerformanceHints performanceHints() const

$prototypeV2=QQuickPaintedItem::RenderTarget renderTarget() const

$prototypeV2=void resetContentsSize()

$prototype=void setAntialiasing(bool enable)
$method=|void|setAntialiasing|bool

$prototype=void setContentsScale(qreal)
$method=|void|setContentsScale|qreal

$prototype=void setContentsSize(const QSize &)
$method=|void|setContentsSize|const QSize &

$prototype=void setFillColor(const QColor &)
$method=|void|setFillColor|const QColor &

$prototype=void setMipmap(bool enable)
$method=|void|setMipmap|bool

$prototype=void setOpaquePainting(bool opaque)
$method=|void|setOpaquePainting|bool

$prototype=void setPerformanceHint(PerformanceHint hint, bool enabled = true)
$method=|void|setPerformanceHint|QQuickPaintedItem::PerformanceHint,bool=true

$prototype=void setPerformanceHints(PerformanceHints hints)
$method=|void|setPerformanceHints|QQuickPaintedItem::PerformanceHints

$prototype=void setRenderTarget(RenderTarget target)
$method=|void|setRenderTarget|QQuickPaintedItem::RenderTarget

$prototype=void update(const QRect & rect = QRect())
$method=|void|update|const QRect &=QRect()

%%
%% SIGNALS
%%

$prototype=void contentsScaleChanged()
$signalMethod=|void|contentsScaleChanged|

$prototype=void contentsSizeChanged()
$signalMethod=|void|contentsSizeChanged|

$prototype=void fillColorChanged()
$signalMethod=|void|fillColorChanged|

$prototype=void renderTargetChanged()
$signalMethod=|void|renderTargetChanged|

#pragma ENDDUMP
