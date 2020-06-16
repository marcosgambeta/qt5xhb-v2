%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QBrush>
#include <QtGui/QPen>

$deleteMethod

$prototypeV2=QBrush brush() const

$prototype=void setBrush ( const QBrush & brush )
$method=|void|setBrush|const QBrush &

$prototypeV2=QPen pen() const

$prototype=void setPen ( const QPen & pen )
$method=|void|setPen|const QPen &

$prototype=bool isObscuredBy ( const QGraphicsItem * item ) const
$method=|bool|isObscuredBy|const QGraphicsItem *

$prototypeV2=QPainterPath opaqueArea() const

#pragma ENDDUMP
