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

$prototype=QPen ()
$internalConstructor=|new1|

$prototype=QPen ( Qt::PenStyle style )
$internalConstructor=|new2|Qt::PenStyle

$prototype=QPen ( const QColor & color )
$internalConstructor=|new3|const QColor &

$prototype=QPen ( const QBrush & brush, qreal width, Qt::PenStyle style = Qt::SolidLine, Qt::PenCapStyle cap = Qt::SquareCap, Qt::PenJoinStyle join = Qt::BevelJoin )
$internalConstructor=|new4|const QBrush &,qreal,Qt::PenStyle=Qt::SolidLine,Qt::PenCapStyle=Qt::SquareCap,Qt::PenJoinStyle=Qt::BevelJoin

$prototype=QPen ( const QPen & pen )
$internalConstructor=|new5|const QPen &

/*
[1]QPen ()
[2]QPen ( Qt::PenStyle style )
[3]QPen ( const QColor & color )
[4]QPen ( const QBrush & brush, qreal width, Qt::PenStyle style = Qt::SolidLine, Qt::PenCapStyle cap = Qt::SquareCap, Qt::PenJoinStyle join = Qt::BevelJoin )
[5]QPen ( const QPen & pen )
*/

HB_FUNC_STATIC( QPEN_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPen_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPen_new2();
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QPen_new3();
  }
  else if( ISBETWEEN(2,5) && ISQBRUSH(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QPen_new4();
  }
  else if( ISNUMPAR(1) && ISQPEN(1) )
  {
    QPen_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QBrush brush() const

$prototypeV2=Qt::PenCapStyle capStyle() const

$prototypeV2=QColor color() const

$prototypeV2=qreal dashOffset() const

$prototypeV2=bool isCosmetic() const

$prototypeV2=bool isSolid() const

$prototypeV2=Qt::PenJoinStyle joinStyle() const

$prototypeV2=qreal miterLimit() const

$prototypeV2=void setBrush( const QBrush & brush )

$prototypeV2=void setCapStyle( Qt::PenCapStyle style )

$prototypeV2=void setColor( const QColor & color )

$prototypeV2=void setCosmetic( bool cosmetic )

$prototypeV2=void setDashOffset( qreal offset )

$prototypeV2=void setJoinStyle( Qt::PenJoinStyle style )

$prototypeV2=void setMiterLimit( qreal limit )

$prototypeV2=void setStyle( Qt::PenStyle style )

$prototypeV2=void setWidth( int width )

$prototypeV2=void setWidthF( qreal width )

$prototypeV2=Qt::PenStyle style() const

$prototypeV2=int width() const

$prototypeV2=qreal widthF() const

$extraMethods

#pragma ENDDUMP
