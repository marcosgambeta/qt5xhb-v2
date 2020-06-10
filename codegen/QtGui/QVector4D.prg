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

#include <QtGui/QVector2D>
#include <QtGui/QVector3D>

$prototype=QVector4D()
$internalConstructor=|new1|

$prototype=QVector4D(float xpos, float ypos, float zpos, float wpos)
$internalConstructor=|new2|float,float,float,float

$prototype=QVector4D(const QPoint& point)
$internalConstructor=|new3|const QPoint &

$prototype=QVector4D(const QPointF& point)
$internalConstructor=|new4|const QPointF &

$prototype=QVector4D(const QVector2D& vector)
$internalConstructor=|new5|const QVector2D &

$prototype=QVector4D(const QVector2D& vector, float zpos, float wpos)
$internalConstructor=|new6|const QVector2D &,float,float

$prototype=QVector4D(const QVector3D& vector)
$internalConstructor=|new7|const QVector3D &

$prototype=QVector4D(const QVector3D& vector, float wpos)
$internalConstructor=|new8|const QVector3D &,float

/*
[1]QVector4D()
[2]QVector4D(float xpos, float ypos, float zpos, float wpos)
[3]QVector4D(const QPoint& point)
[4]QVector4D(const QPointF& point)
[5]QVector4D(const QVector2D& vector)
[6]QVector4D(const QVector2D& vector, float zpos, float wpos)
[7]QVector4D(const QVector3D& vector)
[8]QVector4D(const QVector3D& vector, float wpos)
*/

HB_FUNC_STATIC( QVECTOR4D_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVector4D_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QVector4D_new2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QVector4D_new3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QVector4D_new4();
  }
  else if( ISNUMPAR(1) && ISQVECTOR2D(1) )
  {
    QVector4D_new5();
  }
  else if( ISNUMPAR(3) && ISQVECTOR2D(1) && ISNUM(2) && ISNUM(3) )
  {
    QVector4D_new6();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QVector4D_new7();
  }
  else if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISNUM(2) )
  {
    QVector4D_new8();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isNull() const

$prototypeV2=float x() const

$prototypeV2=float y() const

$prototypeV2=float z() const

$prototypeV2=float w() const

$prototype=void setX(float x)
$method=|void|setX|float

$prototype=void setY(float y)
$method=|void|setY|float

$prototype=void setZ(float z)
$method=|void|setZ|float

$prototype=void setW(float w)
$method=|void|setW|float

$prototypeV2=float length() const

$prototypeV2=float lengthSquared() const

$prototypeV2=QVector4D normalized() const

$prototypeV2=void normalize()

$prototypeV2=QVector2D toVector2D() const

$prototypeV2=QVector2D toVector2DAffine() const

$prototypeV2=QVector3D toVector3D() const

$prototypeV2=QVector3D toVector3DAffine() const

$prototypeV2=QPoint toPoint() const

$prototypeV2=QPointF toPointF() const

$prototype=static float dotProduct(const QVector4D& v1, const QVector4D& v2)
$staticMethod=|float|dotProduct|const QVector4D &,const QVector4D &

$extraMethods

#pragma ENDDUMP
