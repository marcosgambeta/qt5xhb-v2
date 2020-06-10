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

#include <QtGui/QPainterPath>

$prototype=QTransform(Qt::Initialization)
$internalConstructor=|new1|Qt::Initialization

$prototype=QTransform()
$internalConstructor=|new2|

$prototype=QTransform(qreal h11, qreal h12, qreal h13,qreal h21, qreal h22, qreal h23,qreal h31, qreal h32, qreal h33 = 1.0)
$internalConstructor=|new3|qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal=1.0

$prototype=QTransform(qreal h11, qreal h12, qreal h21,qreal h22, qreal dx, qreal dy)
$internalConstructor=|new4|qreal,qreal,qreal,qreal,qreal,qreal

$prototype=QTransform(const QMatrix &mtx)
$internalConstructor=|new5|const QMatrix &

$prototype=QTransform(const QTransform &other)
$internalConstructor=|new6|const QTransform &

%% TODO: revisar construtores

/*
[1]QTransform(Qt::Initialization)
[2]QTransform()
[3]QTransform(qreal h11, qreal h12, qreal h13,qreal h21, qreal h22, qreal h23,qreal h31, qreal h32, qreal h33 = 1.0)
[4]QTransform(qreal h11, qreal h12, qreal h21,qreal h22, qreal dx, qreal dy)
[5]QTransform(const QMatrix &mtx)
[6]QTransform(const QTransform &other)
*/

HB_FUNC_STATIC( QTRANSFORM_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTransform_new1();
  }
  else if( ISNUMPAR(0) )
  {
    QTransform_new2();
  }
  else if( ISBETWEEN(8,9) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISOPTNUM(9) )
  {
    QTransform_new3();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QTransform_new4();
  }
  else if( ISNUMPAR(1) && ISQMATRIX(1) )
  {
    QTransform_new5();
  }
  else if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    QTransform_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isAffine() const

$prototypeV2=bool isIdentity() const

$prototypeV2=bool isInvertible() const

$prototypeV2=bool isScaling() const

$prototypeV2=bool isRotating() const

$prototypeV2=bool isTranslating() const

$prototypeV2=QTransform::TransformationType type() const

$prototypeV2=qreal determinant() const

$prototypeV2=qreal det() const

$prototypeV2=qreal m11() const

$prototypeV2=qreal m12() const

$prototypeV2=qreal m13() const

$prototypeV2=qreal m21() const

$prototypeV2=qreal m22() const

$prototypeV2=qreal m23() const

$prototypeV2=qreal m31() const

$prototypeV2=qreal m32() const

$prototypeV2=qreal m33() const

$prototypeV2=qreal dx() const

$prototypeV2=qreal dy() const

$prototype=void setMatrix(qreal m11, qreal m12, qreal m13,qreal m21, qreal m22, qreal m23,qreal m31, qreal m32, qreal m33)
$method=|void|setMatrix|qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal,qreal

$prototype=QTransform inverted(bool *invertible = nullptr) const
$method=|QTransform|inverted|bool *=nullptr

$prototypeV2=QTransform adjoint() const

$prototypeV2=QTransform transposed() const

$prototype=QTransform &translate(qreal dx, qreal dy)
$method=|QTransform &|translate|qreal,qreal

$prototype=QTransform &scale(qreal sx, qreal sy)
$method=|QTransform &|scale|qreal,qreal

$prototype=QTransform &shear(qreal sh, qreal sv)
$method=|QTransform &|shear|qreal,qreal

$prototype=QTransform &rotate(qreal a, Qt::Axis axis = Qt::ZAxis)
$method=|QTransform &|rotate|qreal,Qt::Axis=Qt::ZAxis

$prototype=QTransform &rotateRadians(qreal a, Qt::Axis axis = Qt::ZAxis)
$method=|QTransform &|rotateRadians|qreal,Qt::Axis=Qt::ZAxis

$prototypeV2=void reset()

$prototype=QPoint map(const QPoint &p) const
$internalMethod=|QPoint|map,map1|const QPoint &

$prototype=QPointF map(const QPointF &p) const
$internalMethod=|QPointF|map,map2|const QPointF &

$prototype=QLine map(const QLine &l) const
$internalMethod=|QLine|map,map3|const QLine &

$prototype=QLineF map(const QLineF &l) const
$internalMethod=|QLineF|map,map4|const QLineF &

$prototype=QPolygonF map(const QPolygonF &a) const
$internalMethod=|QPolygonF|map,map5|const QPolygonF &

$prototype=QPolygon map(const QPolygon &a) const
$internalMethod=|QPolygon|map,map6|const QPolygon &

$prototype=QRegion map(const QRegion &r) const
$internalMethod=|QRegion|map,map7|const QRegion &

$prototype=QPainterPath map(const QPainterPath &p) const
$internalMethod=|QPainterPath|map,map8|const QPainterPath &

$prototype=void map(int x, int y, int *tx, int *ty) const
$internalMethod=|void|map,map9|int,int,int *,int *

$prototype=void map(qreal x, qreal y, qreal *tx, qreal *ty) const
$internalMethod=|void|map,map10|qreal,qreal,qreal *,qreal *

/*
[1]QPoint map(const QPoint &p) const
[2]QPointF map(const QPointF &p) const
[3]QLine map(const QLine &l) const
[4]QLineF map(const QLineF &l) const
[5]QPolygonF map(const QPolygonF &a) const
[6]QPolygon map(const QPolygon &a) const
[7]QRegion map(const QRegion &r) const
[8]QPainterPath map(const QPainterPath &p) const
[9]void map(int x, int y, int *tx, int *ty) const
[10]void map(qreal x, qreal y, qreal *tx, qreal *ty) const
*/

HB_FUNC_STATIC( QTRANSFORM_MAP )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTransform_map1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QTransform_map2();
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    QTransform_map3();
  }
  else if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    QTransform_map4();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QTransform_map5();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QTransform_map6();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QTransform_map7();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QTransform_map8();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QTransform_map9();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QTransform_map10();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=map

$prototype=QPolygon mapToPolygon(const QRect &r) const
$method=|QPolygon|mapToPolygon|const QRect &

$prototype=QRect mapRect(const QRect &) const
$internalMethod=|QRect|mapRect,mapRect1|const QRect &

$prototype=QRectF mapRect(const QRectF &) const
$internalMethod=|QRectF|mapRect,mapRect2|const QRectF &

/*
[1]QRect mapRect(const QRect &) const
[2]QRectF mapRect(const QRectF &) const
*/

HB_FUNC_STATIC( QTRANSFORM_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QTransform_mapRect1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QTransform_mapRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapRect

$prototype=const QMatrix &toAffine() const
$method=|const QMatrix &|toAffine|

$prototype=static bool squareToQuad(const QPolygonF &square, QTransform &result)
$staticMethod=|bool|squareToQuad|const QPolygonF &,QTransform &

$prototype=static bool quadToSquare(const QPolygonF &quad, QTransform &result)
$staticMethod=|bool|quadToSquare|const QPolygonF &,QTransform &

$prototype=static bool quadToQuad(const QPolygonF &one,const QPolygonF &two,QTransform &result)
$staticMethod=|bool|quadToQuad|const QPolygonF &,const QPolygonF &,QTransform &

$prototype=static QTransform fromTranslate(qreal dx, qreal dy)
$staticMethod=|QTransform|fromTranslate|qreal,qreal

$prototype=static QTransform fromScale(qreal dx, qreal dy)
$staticMethod=|QTransform|fromScale|qreal,qreal

$extraMethods

#pragma ENDDUMP
