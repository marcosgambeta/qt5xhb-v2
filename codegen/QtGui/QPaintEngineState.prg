%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QPainterPath>

$deleteMethod

$prototypeV2=QBrush backgroundBrush() const

$prototypeV2=Qt::BGMode backgroundMode() const

$prototypeV2=QBrush brush() const

$prototypeV2=bool brushNeedsResolving() const

$prototypeV2=QPointF brushOrigin() const

$prototypeV2=Qt::ClipOperation clipOperation() const

$prototypeV2=QPainterPath clipPath() const

$prototypeV2=QRegion clipRegion() const

$prototypeV2=QPainter::CompositionMode compositionMode() const

$prototypeV2=QFont font() const

$prototypeV2=bool isClipEnabled() const

$prototypeV2=qreal opacity() const

$prototypeV2=QPainter * painter() const

$prototypeV2=QPen pen() const

$prototypeV2=bool penNeedsResolving() const

$prototypeV2=QPainter::RenderHints renderHints() const

$prototypeV2=QPaintEngine::DirtyFlags state() const

$prototypeV2=QTransform transform() const

$extraMethods

#pragma ENDDUMP
