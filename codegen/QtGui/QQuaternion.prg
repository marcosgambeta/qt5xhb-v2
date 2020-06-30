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

$prototype=QQuaternion()
$internalConstructor=|new1|

$prototype=QQuaternion(float scalar, float xpos, float ypos, float zpos)
$internalConstructor=|new2|float,float,float,float

$prototype=QQuaternion(float scalar, const QVector3D& vector)
$internalConstructor=|new3|float,const QVector3D &

$prototype=QQuaternion(const QVector4D& vector)
$internalConstructor=|new4|const QVector4D &

/*
[1]QQuaternion()
[2]QQuaternion(float scalar, float xpos, float ypos, float zpos)
[3]QQuaternion(float scalar, const QVector3D& vector)
[4]QQuaternion(const QVector4D& vector)
*/

HB_FUNC_STATIC( QQUATERNION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QQuaternion_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QQuaternion_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISOBJECT(2) )
  {
    QQuaternion_new3();
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    QQuaternion_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isNull() const

$prototypeV2=bool isIdentity() const

$prototypeV2=QVector3D vector() const

$prototype=void setVector(const QVector3D& vector)
$internalMethod=|void|setVector,setVector1|const QVector3D &

$prototype=void setVector(float x, float y, float z)
$internalMethod=|void|setVector,setVector2|float,float,float

/*
[1]void setVector(const QVector3D& vector)
[2]void setVector(float x, float y, float z)
*/

HB_FUNC_STATIC( QQUATERNION_SETVECTOR )
{
  if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QQuaternion_setVector1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QQuaternion_setVector2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setVector

$prototypeV2=float x() const

$prototypeV2=float y() const

$prototypeV2=float z() const

$prototypeV2=float scalar() const

$prototypeV2=void setX( float x )

$prototypeV2=void setY( float y )

$prototypeV2=void setZ( float z )

$prototypeV2=void setScalar( float scalar )

$prototypeV2=float length() const

$prototypeV2=float lengthSquared() const

$prototypeV2=QQuaternion normalized() const

$prototypeV2=void normalize()

$prototypeV2=QQuaternion conjugate() const

$prototypeV2=QVector3D rotatedVector( const QVector3D & vector ) const

$prototypeV2=QVector4D toVector4D() const

$prototype=static QQuaternion fromAxisAndAngle(const QVector3D& axis, float angle)
$internalStaticMethod=|QQuaternion|fromAxisAndAngle,fromAxisAndAngle1|const QVector3D &,float

$prototype=static QQuaternion fromAxisAndAngle(float x, float y, float z, float angle)
$internalStaticMethod=|QQuaternion|fromAxisAndAngle,fromAxisAndAngle2|float,float,float,float

/*
[1]static QQuaternion fromAxisAndAngle(const QVector3D& axis, float angle)
[2]static QQuaternion fromAxisAndAngle(float x, float y, float z, float angle)
*/

HB_FUNC_STATIC( QQUATERNION_FROMAXISANDANGLE )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISNUM(2) )
  {
    QQuaternion_fromAxisAndAngle1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QQuaternion_fromAxisAndAngle2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fromAxisAndAngle

$prototypeV2=static QQuaternion slerp( const QQuaternion & q1, const QQuaternion & q2, float t )

$prototypeV2=static QQuaternion nlerp( const QQuaternion & q1, const QQuaternion & q2, float t )

$extraMethods

#pragma ENDDUMP
