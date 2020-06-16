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

$prototype=QGraphicsPixmapItem ( QGraphicsItem * parent = nullptr )
$internalConstructor=|new1|QGraphicsItem *=nullptr

$prototype=QGraphicsPixmapItem ( const QPixmap & pixmap, QGraphicsItem * parent = nullptr )
$internalConstructor=|new2|const QPixmap &,QGraphicsItem *=nullptr

/*
[1]QGraphicsPixmapItem ( QGraphicsItem * parent = nullptr )
[2]QGraphicsPixmapItem ( const QPixmap & pixmap, QGraphicsItem * parent = nullptr )
*/

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPixmapItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPIXMAP(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPixmapItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QPointF offset() const

$prototypeV2=QPixmap pixmap() const

$prototype=void setOffset ( const QPointF & offset )
$internalMethod=|void|setOffset,setOffset1|const QPointF &

$prototype=void setOffset ( qreal x, qreal y )
$internalMethod=|void|setOffset,setOffset2|qreal,qreal

/*
[1]void setOffset ( const QPointF & offset )
[2]void setOffset ( qreal x, qreal y )
*/

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETOFFSET )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsPixmapItem_setOffset1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsPixmapItem_setOffset2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setOffset

$prototype=void setPixmap ( const QPixmap & pixmap )
$method=|void|setPixmap|const QPixmap &

$prototype=void setShapeMode ( ShapeMode mode )
$method=|void|setShapeMode|QGraphicsPixmapItem::ShapeMode

$prototype=void setTransformationMode ( Qt::TransformationMode mode )
$method=|void|setTransformationMode|Qt::TransformationMode

$prototypeV2=QGraphicsPixmapItem::ShapeMode shapeMode() const

$prototypeV2=Qt::TransformationMode transformationMode() const

$prototypeV2=virtual QRectF boundingRect() const

$prototype=virtual bool contains ( const QPointF & point ) const
$virtualMethod=|bool|contains|const QPointF &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototypeV2=virtual QPainterPath opaqueArea() const

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *

$prototypeV2=virtual QPainterPath shape() const

$prototypeV2=virtual int type() const

#pragma ENDDUMP
