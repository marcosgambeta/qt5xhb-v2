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

$prototype=QRect ()
$internalConstructor=|new1|

$prototype=QRect ( const QPoint & topLeft, const QPoint & bottomRight )
$internalConstructor=|new2|const QPoint &,const QPoint &

$prototype=QRect ( const QPoint & topLeft, const QSize & size )
$internalConstructor=|new3|const QPoint &,const QSize &

$prototype=QRect ( int x, int y, int width, int height )
$internalConstructor=|new4|int,int,int,int

/*
[1]QRect ()
[2]QRect ( const QPoint & topLeft, const QPoint & bottomRight )
[3]QRect ( const QPoint & topLeft, const QSize & size )
[4]QRect ( int x, int y, int width, int height )
*/

HB_FUNC_STATIC( QRECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRect_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    QRect_new2();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSIZE(2) )
  {
    QRect_new3();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QRect_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void adjust( int dx1, int dy1, int dx2, int dy2 )

$prototypeV2=QRect adjusted( int dx1, int dy1, int dx2, int dy2 ) const

$prototypeV2=int bottom() const

$prototypeV2=QPoint bottomLeft() const

$prototypeV2=QPoint bottomRight() const

$prototypeV2=QPoint center() const

$prototype=bool contains ( const QPoint & point, bool proper = false ) const
$internalMethod=|bool|contains,contains1|const QPoint &,bool=false

$prototype=bool contains ( int x, int y, bool proper ) const
$internalMethod=|bool|contains,contains2|int,int,bool

$prototype=bool contains ( int x, int y ) const
$internalMethod=|bool|contains,contains3|int,int

$prototype=bool contains ( const QRect & rectangle, bool proper = false ) const
$internalMethod=|bool|contains,contains4|const QRect &,bool=false

/*
[1]bool contains ( const QPoint & point, bool proper = false ) const
[2]bool contains ( int x, int y, bool proper ) const
[3]bool contains ( int x, int y ) const
[4]bool contains ( const QRect & rectangle, bool proper = false ) const
*/

HB_FUNC_STATIC( QRECT_CONTAINS )
{
  if( ISBETWEEN(1,2) && ISQPOINT(1) && ISOPTLOG(2) )
  {
    QRect_contains1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISLOG(3) )
  {
    QRect_contains2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_contains3();
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && ISOPTLOG(2) )
  {
    QRect_contains4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=contains

$prototypeV2=void getCoords( int * x1, int * y1, int * x2, int * y2 ) const

$prototypeV2=void getRect( int * x, int * y, int * width, int * height ) const

$prototypeV2=int height() const

$prototypeV2=QRect intersected( const QRect & rectangle ) const

$prototypeV2=bool intersects( const QRect & rectangle ) const

$prototypeV2=bool isEmpty() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isValid() const

$prototypeV2=int left() const

$prototypeV2=void moveBottom( int y )

$prototypeV2=void moveBottomLeft( const QPoint & position )

$prototypeV2=void moveBottomRight( const QPoint & position )

$prototypeV2=void moveCenter( const QPoint & position )

$prototypeV2=void moveLeft( int x )

$prototypeV2=void moveRight( int x )

$prototype=void moveTo ( int x, int y )
$internalMethod=|void|moveTo,moveTo1|int,int

$prototype=void moveTo ( const QPoint & position )
$internalMethod=|void|moveTo,moveTo2|const QPoint &

/*
[1]void moveTo ( int x, int y )
[2]void moveTo ( const QPoint & position )
*/

HB_FUNC_STATIC( QRECT_MOVETO )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_moveTo1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRect_moveTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=moveTo

$prototypeV2=void moveTop( int y )

$prototypeV2=void moveTopLeft( const QPoint & position )

$prototypeV2=void moveTopRight( const QPoint & position )

$prototypeV2=QRect normalized() const

$prototypeV2=int right() const

$prototypeV2=void setBottom( int y )

$prototypeV2=void setBottomLeft( const QPoint & position )

$prototypeV2=void setBottomRight( const QPoint & position )

$prototypeV2=void setCoords( int x1, int y1, int x2, int y2 )

$prototypeV2=void setHeight( int height )

$prototypeV2=void setLeft( int x )

$prototypeV2=void setRect( int x, int y, int width, int height )

$prototypeV2=void setRight( int x )

$prototypeV2=void setSize( const QSize & size )

$prototypeV2=void setTop( int y )

$prototypeV2=void setTopLeft( const QPoint & position )

$prototypeV2=void setTopRight( const QPoint & position )

$prototypeV2=void setWidth( int width )

$prototypeV2=void setX( int x )

$prototypeV2=void setY( int y )

$prototypeV2=QSize size() const

$prototypeV2=int top() const

$prototypeV2=QPoint topLeft() const

$prototypeV2=QPoint topRight() const

$prototype=void translate ( int dx, int dy )
$internalMethod=|void|translate,translate1|int,int

$prototype=void translate ( const QPoint & offset )
$internalMethod=|void|translate,translate2|const QPoint &

/*
[1]void translate ( int dx, int dy )
[2]void translate ( const QPoint & offset )
*/

HB_FUNC_STATIC( QRECT_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRect_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=translate

$prototype=QRect translated ( int dx, int dy ) const
$internalMethod=|QRect|translated,translated1|int,int

$prototype=QRect translated ( const QPoint & offset ) const
$internalMethod=|QRect|translated,translated2|const QPoint &

/*
[1]QRect translated ( int dx, int dy ) const
[2]QRect translated ( const QPoint & offset ) const
*/

HB_FUNC_STATIC( QRECT_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRect_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRect_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=translated

$prototypeV2=QRect united( const QRect & rectangle ) const

$prototypeV2=int width() const

$prototypeV2=int x() const

$prototypeV2=int y() const

$extraMethods

#pragma ENDDUMP
