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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScrollPrepareEvent(const QPointF &startPos)
$constructor=|new|const QPointF &

$deleteMethod

$prototypeV2=QPointF startPos() const

$prototypeV2=QSizeF viewportSize() const

$prototypeV2=QRectF contentPosRange() const

$prototypeV2=QPointF contentPos() const

$prototype=void setViewportSize(const QSizeF &size)
$method=|void|setViewportSize|const QSizeF &

$prototype=void setContentPosRange(const QRectF &rect)
$method=|void|setContentPosRange|const QRectF &

$prototype=void setContentPos(const QPointF &pos)
$method=|void|setContentPos|const QPointF &

#pragma ENDDUMP
