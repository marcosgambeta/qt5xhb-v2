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

$beginClassFrom=QAbstractGraphicsShapeItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsEllipseItem ( QGraphicsItem * parent = nullptr )
$internalConstructor=|new1|QGraphicsItem *=nullptr

$prototype=QGraphicsEllipseItem ( const QRectF & rect, QGraphicsItem * parent = nullptr )
$internalConstructor=|new2|const QRectF &,QGraphicsItem *=nullptr

$prototype=QGraphicsEllipseItem ( qreal x, qreal y, qreal width, qreal height, QGraphicsItem * parent = nullptr )
$internalConstructor=|new3|qreal,qreal,qreal,qreal,QGraphicsItem *=nullptr

/*
[1]QGraphicsEllipseItem ( QGraphicsItem * parent = nullptr )
[2]QGraphicsEllipseItem ( const QRectF & rect, QGraphicsItem * parent = nullptr )
[3]QGraphicsEllipseItem ( qreal x, qreal y, qreal width, qreal height, QGraphicsItem * parent = nullptr )
*/

HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsEllipseItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsEllipseItem_new2();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQGRAPHICSITEM(5)||ISNIL(5)) )
  {
    QGraphicsEllipseItem_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QRectF rect() const

$prototype=void setRect ( const QRectF & rect )
$internalMethod=|void|setRect,setRect1|const QRectF &

$prototype=void setRect ( qreal x, qreal y, qreal width, qreal height )
$internalMethod=|void|setRect,setRect2|qreal,qreal,qreal,qreal

/*
[1]void setRect ( const QRectF & rect )
[2]void setRect ( qreal x, qreal y, qreal width, qreal height )
*/

HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsEllipseItem_setRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsEllipseItem_setRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setRect

$prototype=void setSpanAngle ( int angle )
$method=|void|setSpanAngle|int

$prototype=void setStartAngle ( int angle )
$method=|void|setStartAngle|int

$prototypeV2=int spanAngle() const

$prototypeV2=int startAngle() const

$prototypeV2=virtual QRectF boundingRect() const

$prototype=virtual bool contains ( const QPointF & point ) const
$virtualMethod=|bool|contains|const QPointF &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototypeV2=virtual QPainterPath opaqueArea() const

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = nullptr )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=nullptr

$prototypeV2=virtual QPainterPath shape() const

$prototypeV2=virtual int type() const

#pragma ENDDUMP
