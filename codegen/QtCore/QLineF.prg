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

$prototype=QLineF()
$internalConstructor=|new1|

$prototype=QLineF(const QPointF & p1, const QPointF & p2)
$internalConstructor=|new2|const QPointF &,const QPointF &

$prototype=QLineF(qreal x1, qreal y1, qreal x2, qreal y2)
$internalConstructor=|new3|qreal,qreal,qreal,qreal

$prototype=QLineF(const QLine & line)
$internalConstructor=|new4|const QLine &

/*
[1]QLineF()
[2]QLineF(const QPointF & p1, const QPointF & p2)
[3]QLineF(qreal x1, qreal y1, qreal x2, qreal y2)
[4]QLineF(const QLine & line)
*/

HB_FUNC_STATIC( QLINEF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QLineF_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QLineF_new2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLineF_new3();
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    QLineF_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QPointF p1() const

$prototypeV2=QPointF p2() const

$prototypeV2=qreal x1() const

$prototypeV2=qreal x2() const

$prototypeV2=qreal y1() const

$prototypeV2=qreal y2() const

$prototypeV2=qreal angle() const

$prototypeV2=qreal angleTo( const QLineF & line ) const

$prototypeV2=qreal dx() const

$prototypeV2=qreal dy() const

$prototypeV2=QLineF::IntersectType intersect( const QLineF & line, QPointF * intersectionPoint ) const

$prototypeV2=bool isNull() const

$prototypeV2=qreal length() const

$prototypeV2=QLineF normalVector() const

$prototypeV2=QPointF pointAt( qreal t ) const

$prototypeV2=void setP1( const QPointF & p1 )

$prototypeV2=void setP2( const QPointF & p2 )

$prototypeV2=void setAngle( qreal angle )

$prototypeV2=void setLength( qreal length )

$prototypeV2=void setLine( qreal x1, qreal y1, qreal x2, qreal y2 )

$prototypeV2=void setPoints( const QPointF & p1, const QPointF & p2 )

$prototypeV2=QLine toLine() const

$prototype=void translate(const QPointF & offset)
$internalMethod=|void|translate,translate1|const QPointF &

$prototype=void translate(qreal dx, qreal dy)
$internalMethod=|void|translate,translate2|qreal,qreal

/*
[1]void translate(const QPointF & offset)
[2]void translate(qreal dx, qreal dy)
*/

HB_FUNC_STATIC( QLINEF_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QLineF_translate1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QLineF_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=translate

$prototype=QLineF translated(const QPointF & offset) const
$internalMethod=|QLineF|translated,translated1|const QPointF &

$prototype=QLineF translated(qreal dx, qreal dy) const
$internalMethod=|QLineF|translated,translated2|qreal,qreal

/*
[1]QLineF translated(const QPointF & offset) const
[2]QLineF translated(qreal dx, qreal dy) const
*/

HB_FUNC_STATIC( QLINEF_TRANSLATED )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QLineF_translated1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QLineF_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=translated

$prototypeV2=QLineF unitVector() const

$prototypeV2=static QLineF fromPolar( qreal length, qreal angle )

$extraMethods

#pragma ENDDUMP
