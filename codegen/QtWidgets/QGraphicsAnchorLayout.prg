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

$beginClassFrom=QGraphicsLayout

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsAnchorLayout ( QGraphicsLayoutItem * parent = nullptr )
$constructor=|new|QGraphicsLayoutItem *=nullptr

$deleteMethod

$prototype=QGraphicsAnchor * addAnchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
$method=|QGraphicsAnchor *|addAnchor|QGraphicsLayoutItem *,Qt::AnchorPoint,QGraphicsLayoutItem *,Qt::AnchorPoint

$prototype=void addAnchors ( QGraphicsLayoutItem * firstItem, QGraphicsLayoutItem * secondItem, Qt::Orientations orientations = Qt::Horizontal | Qt::Vertical )
$method=|void|addAnchors|QGraphicsLayoutItem *,QGraphicsLayoutItem *,Qt::Orientations=Qt::Horizontal OR Qt::Vertical

$prototype=void addCornerAnchors ( QGraphicsLayoutItem * firstItem, Qt::Corner firstCorner, QGraphicsLayoutItem * secondItem, Qt::Corner secondCorner )
$method=|void|addCornerAnchors|QGraphicsLayoutItem *,Qt::Corner,QGraphicsLayoutItem *,Qt::Corner

$prototype=QGraphicsAnchor * anchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
$method=|QGraphicsAnchor *|anchor|QGraphicsLayoutItem *,Qt::AnchorPoint,QGraphicsLayoutItem *,Qt::AnchorPoint

$prototypeV2=qreal horizontalSpacing() const

$prototype=void setHorizontalSpacing ( qreal spacing )
$method=|void|setHorizontalSpacing|qreal

$prototype=void setSpacing ( qreal spacing )
$method=|void|setSpacing|qreal

$prototype=void setVerticalSpacing ( qreal spacing )
$method=|void|setVerticalSpacing|qreal

$prototypeV2=qreal verticalSpacing() const

$prototypeV2=virtual int count() const

$prototypeV2=virtual void invalidate()

$prototype=virtual QGraphicsLayoutItem * itemAt ( int index ) const
$virtualMethod=|QGraphicsLayoutItem *|itemAt|int

$prototype=virtual void removeAt ( int index )
$virtualMethod=|void|removeAt|int

$prototype=virtual void setGeometry ( const QRectF & geom )
$virtualMethod=|void|setGeometry|const QRectF &

#pragma ENDDUMP
