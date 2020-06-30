%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui
$added=5,3,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QRect>

$prototype=QPageLayout()
$internalConstructor=|new1|

$prototype=QPageLayout(const QPageSize &pageSize, Orientation orientation, const QMarginsF &margins, Unit units = Point, const QMarginsF &minMargins = QMarginsF(0, 0, 0, 0))
%% TODO: implementar
%%$internalConstructor=|new2|const QPageSize &,QPageLayout::Orientation,const QMarginsF &,QPageLayout::Unit=QPageLayout::Point,const QMarginsF &=QMarginsF(0, 0, 0, 0)

$prototype=QPageLayout(const QPageLayout &other)
$internalConstructor=|new3|const QPageLayout &

/*
[1]QPageLayout()
[2]QPageLayout(const QPageSize &pageSize, Orientation orientation, const QMarginsF &margins, Unit units = Point, const QMarginsF &minMargins = QMarginsF(0, 0, 0, 0))
[3]QPageLayout(const QPageLayout &other)
*/

HB_FUNC_STATIC( QPAGELAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_new1();
  }
%%  //else if( ISBETWEEN(3,5) && ISQPAGESIZE(1) && ISNUM(2) && ISQMARGINSF(3) && ISOPTNUM(4) && (ISQMARGINSF(5)||ISNIL(5)) )
%%  //{
%%  //  QPageLayout_new2();
%%  //}
  else if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
  {
    QPageLayout_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void swap( QPageLayout & other )

$prototypeV2=bool isEquivalentTo( const QPageLayout & other ) const

$prototypeV2=bool isValid() const

$prototypeV2=QPageLayout::Mode mode() const

$prototypeV2=void setMode( QPageLayout::Mode mode )

$prototypeV2=QPageSize pageSize() const

$prototypeV2=QPageLayout::Orientation orientation() const

$prototypeV2=void setOrientation( QPageLayout::Orientation orientation )

$prototypeV2=QPageLayout::Unit units() const

$prototypeV2=void setUnits( QPageLayout::Unit units )

$prototypeV2=bool setMargins( const QMarginsF & margins )

$prototypeV2=bool setLeftMargin( qreal leftMargin )

$prototypeV2=bool setRightMargin( qreal rightMargin )

$prototypeV2=bool setTopMargin( qreal topMargin )

$prototypeV2=bool setBottomMargin( qreal bottomMargin )

$prototype=QMarginsF margins() const
$internalMethod=|QMarginsF|margins,margins1|

$prototype=QMarginsF margins(Unit units) const
$internalMethod=|QMarginsF|margins,margins2|QPageLayout::Unit

/*
[1]QMarginsF margins() const
[2]QMarginsF margins(Unit units) const
*/

HB_FUNC_STATIC( QPAGELAYOUT_MARGINS )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_margins1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_margins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=margins

$prototypeV2=QMargins marginsPoints() const

$prototypeV2=QMargins marginsPixels( int resolution ) const

$prototypeV2=void setMinimumMargins( const QMarginsF & minMargins )

$prototypeV2=QMarginsF minimumMargins() const

$prototypeV2=QMarginsF maximumMargins() const

$prototype=QRectF fullRect() const
$internalMethod=|QRectF|fullRect,fullRect1|

$prototype=QRectF fullRect(Unit units) const
$internalMethod=|QRectF|fullRect,fullRect2|QPageLayout::Unit

/*
[1]QRectF fullRect() const
[2]QRectF fullRect(Unit units) const
*/

HB_FUNC_STATIC( QPAGELAYOUT_FULLRECT )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_fullRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_fullRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fullRect

$prototypeV2=QRect fullRectPoints() const

$prototypeV2=QRect fullRectPixels( int resolution ) const

$prototype=QRectF paintRect() const
$internalMethod=|QRectF|paintRect,paintRect1|

$prototype=QRectF paintRect(Unit units) const
$internalMethod=|QRectF|paintRect,paintRect2|QPageLayout::Unit

/*
[1]QRectF paintRect() const
[2]QRectF paintRect(Unit units) const
*/

HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECT )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_paintRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_paintRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=paintRect

$prototypeV2=QRect paintRectPoints() const

$prototypeV2=QRect paintRectPixels( int resolution ) const

$extraMethods

#pragma ENDDUMP
