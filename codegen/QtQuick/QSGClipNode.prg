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

$beginClassFrom=QSGBasicGeometryNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGClipNode()
$constructor=|new|

$deleteMethod

$prototypeV2=QRectF clipRect() const

$prototypeV2=bool isRectangular() const

$prototype=void setClipRect(const QRectF & rect)
$method=|void|setClipRect|const QRectF &

$prototype=void setIsRectangular(bool rectHint)
$method=|void|setIsRectangular|bool

#pragma ENDDUMP
