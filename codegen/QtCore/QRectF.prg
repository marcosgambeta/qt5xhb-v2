%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QRectF ()
$internalConstructor=|new1|

$prototype=QRectF ( const QPointF & topLeft, const QSizeF & size )
$internalConstructor=|new2|const QPointF &,const QSizeF &

$prototype=QRectF ( const QPointF & topLeft, const QPointF & bottomRight )
$internalConstructor=|new3|const QPointF &,const QPointF &

$prototype=QRectF ( qreal x, qreal y, qreal width, qreal height )
$internalConstructor=|new4|qreal,qreal,qreal,qreal

$prototype=QRectF ( const QRect & rectangle )
$internalConstructor=|new5|const QRect &

/*
[1]QRectF ()
[2]QRectF ( const QPointF & topLeft, const QSizeF & size )
[3]QRectF ( const QPointF & topLeft, const QPointF & bottomRight )
[4]QRectF ( qreal x, qreal y, qreal width, qreal height )
[5]QRectF ( const QRect & rectangle )
*/

HB_FUNC_STATIC( QRECTF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRectF_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQSIZEF(2) )
  {
    QRectF_new2();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QRectF_new3();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QRectF_new4();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRectF_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void adjust( qreal dx1, qreal dy1, qreal dx2, qreal dy2 )

$prototypeV2=QRectF adjusted( qreal dx1, qreal dy1, qreal dx2, qreal dy2 ) const

$prototypeV2=qreal bottom() const

$prototypeV2=QPointF bottomLeft() const

$prototypeV2=QPointF bottomRight() const

$prototypeV2=QPointF center() const

$prototype=bool contains ( const QPointF & point ) const
$internalMethod=|bool|contains,contains1|const QPointF &

$prototype=bool contains ( qreal x, qreal y ) const
$internalMethod=|bool|contains,contains2|qreal,qreal

$prototype=bool contains ( const QRectF & rectangle ) const
$internalMethod=|bool|contains,contains3|const QRectF &

/*
[1]bool contains ( const QPointF & point ) const
[2]bool contains ( qreal x, qreal y ) const
[3]bool contains ( const QRectF & rectangle ) const
*/

HB_FUNC_STATIC( QRECTF_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_contains1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_contains2();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QRectF_contains3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=contains

$prototypeV2=void getCoords( qreal * x1, qreal * y1, qreal * x2, qreal * y2 ) const

$prototypeV2=void getRect( qreal * x, qreal * y, qreal * width, qreal * height ) const

$prototypeV2=qreal height() const

$prototypeV2=QRectF intersected( const QRectF & rectangle ) const

$prototypeV2=bool intersects( const QRectF & rectangle ) const

$prototypeV2=bool isEmpty() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isValid() const

$prototypeV2=qreal left() const

$prototypeV2=void moveBottom( qreal y )

$prototypeV2=void moveBottomLeft( const QPointF & position )

$prototypeV2=void moveBottomRight( const QPointF & position )

$prototypeV2=void moveCenter( const QPointF & position )

$prototypeV2=void moveLeft( qreal x )

$prototypeV2=void moveRight( qreal x )

$prototype=void moveTo ( qreal x, qreal y )
$internalMethod=|void|moveTo,moveTo1|qreal,qreal

$prototype=void moveTo ( const QPointF & position )
$internalMethod=|void|moveTo,moveTo2|const QPointF &

/*
[1]void moveTo ( qreal x, qreal y )
[2]void moveTo ( const QPointF & position )
*/

HB_FUNC_STATIC( QRECTF_MOVETO )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_moveTo1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_moveTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=moveTo

$prototypeV2=void moveTop( qreal y )

$prototypeV2=void moveTopLeft( const QPointF & position )

$prototypeV2=void moveTopRight( const QPointF & position )

$prototypeV2=QRectF normalized() const

$prototypeV2=qreal right() const

$prototypeV2=void setBottom( qreal y )

$prototypeV2=void setBottomLeft( const QPointF & position )

$prototypeV2=void setBottomRight( const QPointF & position )

$prototypeV2=void setCoords( qreal x1, qreal y1, qreal x2, qreal y2 )

$prototypeV2=void setHeight( qreal height )

$prototypeV2=void setLeft( qreal x )

$prototypeV2=void setRect( qreal x, qreal y, qreal width, qreal height )

$prototypeV2=void setRight( qreal x )

$prototypeV2=void setSize( const QSizeF & size )

$prototypeV2=void setTop( qreal y )

$prototypeV2=void setTopLeft( const QPointF & position )

$prototypeV2=void setTopRight( const QPointF & position )

$prototypeV2=void setWidth( qreal width )

$prototypeV2=void setX( qreal x )

$prototypeV2=void setY( qreal y )

$prototypeV2=QSizeF size() const

$prototypeV2=QRect toAlignedRect() const

$prototypeV2=QRect toRect() const

$prototypeV2=qreal top() const

$prototypeV2=QPointF topLeft() const

$prototypeV2=QPointF topRight() const

$prototype=void translate ( qreal dx, qreal dy )
$internalMethod=|void|translate,translate1|qreal,qreal

$prototype=void translate ( const QPointF & offset )
$internalMethod=|void|translate,translate2|const QPointF &

/*
[1]void translate ( qreal dx, qreal dy )
[2]void translate ( const QPointF & offset )
*/

HB_FUNC_STATIC( QRECTF_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=translate

$prototype=QRectF translated ( qreal dx, qreal dy ) const
$internalMethod=|QRectF|translated,translated1|qreal,qreal

$prototype=QRectF translated ( const QPointF & offset ) const
$internalMethod=|QRectF|translated,translated2|const QPointF &

/*
[1]QRectF translated ( qreal dx, qreal dy ) const
[2]QRectF translated ( const QPointF & offset ) const
*/

HB_FUNC_STATIC( QRECTF_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRectF_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QRectF_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=translated

$prototypeV2=QRectF united( const QRectF & rectangle ) const

$prototypeV2=qreal width() const

$prototypeV2=qreal x() const

$prototypeV2=qreal y() const

$extraMethods

#pragma ENDDUMP
